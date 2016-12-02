import { TomPage } from './app.po';

describe('tom App', function() {
  let page: TomPage;

  beforeEach(() => {
    page = new TomPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
