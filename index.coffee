# by d4Rk

command: 'GitStats/commands.sh'

refreshFrequency: 600000

render: (output) -> 
  data = JSON.parse(output)
  """
  <div class='header'><img class='logo' src='GitStats/files/git-icon.svg' /><titleBold>git</titleBold><titleLight>-stats</titleLight></div>
  <div><img class='icon' src='GitStats/files/repo.svg' />#{data.repoName}</div>
  <div><img class='icon' src='GitStats/files/history.svg' />#{data.commitCount} commits</div>
  <div><img class='icon' src='GitStats/files/graph.svg' />#{data.commitsPerDay} commits per day</div>
  <div><img class='icon' src='GitStats/files/organization.svg' />#{data.commitCountByDev}</div>
  <div><img class='icon' src='GitStats/files/calendar.svg' />#{data.repoAge} old</div>
  <div><img class='icon' src='GitStats/files/file-text.svg' />#{data.fileCount} files</div>
  <div><img class='icon' src='GitStats/files/file-code.svg' />#{data.fileCountByType}</div>
"""

style: """
  @font-face
    font-family AdelleBold
    src url(GitStats/files/AdelleBold.otf)

  @font-face
    font-family AdelleLight
    src url(GitStats/files/AdelleLight.otf)

  left 0
  top 0
  padding 15px
  margin 0
  background rgba(#000, 0.5)
  -webkit-backdrop-filter: blur(30px)

  font-family AdelleLight
  font-size 1em
  color #52d089

  div
    display flex
    flex-flow row wrap
    align-items center
    margin 5px

  div.header
    margin-bottom 20px

  titleBold
    font-family AdelleBold
    font-size 3em
    color #dc4d3c

  titleLight
    font-family AdelleLight
    font-size 3em
  
  table
    border-collapse collapse

  img.icon
    width 25px
    height @width
    margin 5px 10px 5px 0px
    align-self flex-start

  img.logo
    width 65px
    height @height
    margin-right 10px
"""
