import { SimbitAppPage } from './app.po';

describe('simbit-app App', function() {
  let page: SimbitAppPage;

  beforeEach(() => {
    page = new SimbitAppPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
