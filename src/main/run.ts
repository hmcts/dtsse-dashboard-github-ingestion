import { readdirSync } from 'fs';
import { shutdown, store } from './db/store';
import { migrate } from './db/migrate';

const runQueryAndStore = async (file: string) => {
  const results = await require(__dirname + '/query/' + file).default();
  const queryName = file.replace('.ts', '');

  await store(queryName, results);
};

const run = async () => {
  await migrate();

  const queries = readdirSync(__dirname + '/query')
    .filter(file => file.endsWith('.ts'))
    .map(file => runQueryAndStore(file));

  await Promise.all(queries);
  await shutdown();
};

run().catch(console.error);
