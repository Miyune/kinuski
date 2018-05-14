/home/xubuntu/.config/xfce4/terminal/terminalrc:
  file.managed:
    - source: salt://terminal/settings
    - user: xubuntu
    - group: xubuntu
    - replace: True
    - makedirs: True
