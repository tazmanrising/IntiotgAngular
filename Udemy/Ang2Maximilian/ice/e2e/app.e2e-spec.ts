import { IcePage } from './app.po';

describe('ice App', function() {
  let page: IcePage;

  beforeEach(() => {
    page = new IcePage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
