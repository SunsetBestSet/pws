return {
  version = "1.2",
  luaversion = "5.1",
  tiledversion = "1.3.1",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 10,
  height = 10,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 5,
  nextobjectid = 2,
  properties = {},
  tilesets = {
    {
      name = "overworld0",
      firstgid = 1,
      filename = "overworld0.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 40,
      image = "maps_NEW/overworld0.png",
      imagewidth = 640,
      imageheight = 576,
      transparentcolor = "#ff00ff",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {},
      tilecount = 1440,
      tiles = {
        {
          id = 382,
          animation = {
            {
              tileid = 382,
              duration = 100
            },
            {
              tileid = 385,
              duration = 100
            },
            {
              tileid = 388,
              duration = 100
            }
          }
        },
        {
          id = 383,
          animation = {
            {
              tileid = 383,
              duration = 100
            },
            {
              tileid = 386,
              duration = 100
            },
            {
              tileid = 389,
              duration = 100
            }
          }
        },
        {
          id = 384,
          animation = {
            {
              tileid = 384,
              duration = 100
            },
            {
              tileid = 387,
              duration = 100
            },
            {
              tileid = 390,
              duration = 100
            }
          }
        },
        {
          id = 422,
          animation = {
            {
              tileid = 422,
              duration = 100
            },
            {
              tileid = 425,
              duration = 100
            },
            {
              tileid = 428,
              duration = 100
            }
          }
        },
        {
          id = 423,
          animation = {
            {
              tileid = 423,
              duration = 100
            },
            {
              tileid = 426,
              duration = 100
            },
            {
              tileid = 429,
              duration = 100
            }
          }
        },
        {
          id = 424,
          animation = {
            {
              tileid = 424,
              duration = 100
            },
            {
              tileid = 427,
              duration = 100
            },
            {
              tileid = 430,
              duration = 100
            }
          }
        },
        {
          id = 462,
          animation = {
            {
              tileid = 462,
              duration = 100
            },
            {
              tileid = 465,
              duration = 100
            },
            {
              tileid = 468,
              duration = 100
            }
          }
        },
        {
          id = 463,
          animation = {
            {
              tileid = 463,
              duration = 100
            },
            {
              tileid = 466,
              duration = 100
            },
            {
              tileid = 469,
              duration = 100
            }
          }
        },
        {
          id = 464,
          animation = {
            {
              tileid = 464,
              duration = 100
            },
            {
              tileid = 467,
              duration = 100
            },
            {
              tileid = 470,
              duration = 100
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      id = 1,
      name = "floor",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        406, 406, 406, 406, 406, 406, 406, 406, 406, 406,
        406, 406, 406, 406, 406, 406, 406, 406, 406, 406,
        406, 406, 406, 406, 406, 406, 406, 406, 406, 406,
        406, 406, 406, 406, 406, 406, 406, 406, 406, 406,
        406, 406, 406, 406, 406, 406, 406, 406, 406, 406,
        406, 406, 406, 406, 406, 406, 406, 406, 406, 406,
        406, 406, 406, 406, 406, 406, 406, 406, 406, 406,
        406, 406, 406, 406, 406, 406, 406, 406, 406, 406,
        406, 406, 406, 406, 406, 406, 406, 406, 406, 406,
        406, 406, 406, 406, 406, 406, 406, 406, 406, 406
      }
    },
    {
      type = "tilelayer",
      id = 2,
      name = "fountain",
      x = 0,
      y = 0,
      width = 10,
      height = 10,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 383, 384, 385, 0, 0, 0, 0,
        0, 0, 0, 423, 424, 425, 0, 0, 0, 0,
        0, 0, 0, 463, 464, 465, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      id = 3,
      name = "Objects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "player_spawn",
          type = "",
          shape = "rectangle",
          x = 123.5,
          y = 68.75,
          width = 18,
          height = 16.75,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      id = 4,
      name = "custom_collisions",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {}
    }
  }
}
