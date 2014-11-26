'use strict';

describe('transparencia', function() {

  browser.ignoreSynchronization = true;
  browser.get('');

  it('deve redirecionar automáticamente para login', function() {
    expect(browser.driver.getTitle()).toMatch("Login");
  });

});
