var Election = artifacts.require("./Election.sol");

contract('election', (accounts) => {
  it('election has two candidates originally', async () => {
    const app = await Election.deployed();
    const candidates_count = await app.cadidateCount();
    assert.equal(candidates_count, 2);
  })
})