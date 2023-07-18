//import adapter from '@sveltejs/adapter-auto';
import adapter from '@sveltejs/adapter-static';
import preprocess from 'svelte-preprocess';

/** @type {import('@sveltejs/kit').Config} */
const config = {
  extensions: [".svelte", ".svx", ".md"],
  preprocess: [preprocess({})],
  prerender: {default: true},
	kit: {
    prerender: {
              handleHttpError: ({ path, referrer, message }) => {
                  console.log ("JAH sez",path,referrer);
                      return false;
              }
    },
		// adapter-auto only supports some environments, see https://kit.svelte.dev/docs/adapter-auto for a list.
		// If your environment is not supported or you settled on a specific environment, switch out the adapter.
		// See https://kit.svelte.dev/docs/adapters for more information about adapters.
    adapter: adapter({
          strict: true,
            pages: 'public',
            assets: 'public',
            fallback: '404.html',
            precompress: false
           })
	}
};

export default config;
