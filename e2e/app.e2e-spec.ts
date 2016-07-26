import { KlatoolsNg2Page } from './app.po';

describe('klatools-ng2 App', function() {
  let page: KlatoolsNg2Page;

  beforeEach(() => {
    page = new KlatoolsNg2Page();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
