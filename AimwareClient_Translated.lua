local db = {
    prev = "English",
    lang = {"English", "中文", "Español", "Français", "Suomi", "Português", "Romana", "Deutsch",},
    ["English"] = {
        {"Legitbot", "Ragebot", "Visuals", "Misc", "Settings",},
        {
            {"Aimbot", "Triggerbot", "Weapon", "Other", "Semirage",},
            {
                {"Toggle", "Weapon", "Hitbox Selection",},
                {
                    {"Enable", "Enables legit aimbot.",},
                    {"Aim Key", "Set the aimbot on key.",},
                    {"Toggle Key", "Set the toggle key to enable/disable aimbot.",},
                },
                {
                    {"Auto Fire", "Fires without pressing any keys.",},
                    {"Fire On Press", "Fires when pressing the aimbot key.",},
                    {"Auto Pistol Interval", "Interval between shots for automatic mode.",},
                },
                {
                    {[2] = "Order of hitboxes the aimbot will choose."},
                    {[5] = true, "Hitbox Advance Multipler", "How fast aimbot should switch to the next hitbox.",},
                    {[5] = true, "Nearest To Crosshair", "Priority hitbox nearest to crosshair as first.",},
                },
            },
            {
                {"Toggle", "Weapon", "Hitbox Scan",},
                {
                    {"Enable", "Enables triggerbot.",},
                    {"Trigger Key", "Activate triggerbot on key press.",},
                    {"Auto Fire", "Let triggerbot fire without pressing any key.",},
                },
                {
                    {[5] = true, "Trigger Delay", "Delay shot after trigger lock.",},
                    {[5] = true, "Trigger Burst", "Keep firing after trigger lock.",},
                    {[5] = true, "Hit Chance", "Minimum chance to hit before triggerbot shoots.",},
                    {[5] = true, "Anti-Recoil", "Account for recoil when trigger scanning.",},
                },
                {
                    {[2] = "Trigger on selected hitboxes.",},
                },
            },
            {
                {"Accuracy", "Target", "Aiming", "Visibility",},
                {
                    {[5] = true, "Recoil Control System", "Smoothly counter weapon recoil.",},
                    {[5] = true, "Standalone Recoil Control", "Enable RCS while aiming freely.",},
                    {[5] = true, "Horizontal Recoil", "How much of horizontal recoil will be countered.",},
                    {[5] = true, "Vertical Recoil", "How much of Vertical recoil will be countered.",},
                },
                {
                    {[5] = true, "Minimum FOV Range", "Minimum field of view for aim lock.",},
                    {[5] = true, "Maximum FOV Range", "Maximum field of view for aim lock.",},
                    {[5] = true, "Target Switch Delay", "Time aimbot will wait before switching target.",},
                    {[5] = true, "First Shot Delay", "Time till aimbot fires first shot.",},
                },
                {
                    {[5] = true, "Smooth Factor", "Smooth out aimbot movement.",},
                    {[5] = true, "Smooth Method", "Method to use for smooth movement.", {"Dynamic", "Static",},},
                    {[5] = true, "Randomize Factor", "Randomize aimbot target position.",},
                    {[5] = true, "Curve Factor", "How non-linear the movement will be.",},
                },
                {
                    {[5] = true, "Auto Wall", "Fire through penetrable walls.",},
                    {[5] = true, "Through Smoke", "Fire through smoke.",},
                },

            },
            {
                {"Movement", "Extra",},
                {
                    {"Walk Speed Customization", "Enable walk speed modifications.",},
                    {"Walk Speed", "Modify walk speed with this ammount.",},
                    {"Quick Stop", "Makes you stop faster by counter-strafing.",},
                },
                {
                    {"Backtrack Time", "How many position in the past are allowed.",},
                    {"Knife Triggerbot.", "Enable knife triggerbot.",},
                },
            },
            {
                {"Aimbot", "Position Adjustment", "Anti-Aim",},
                {
                    {"Silent Aimbot", "Autoaim when in Low FOV range.",},
                    {"Auto Stop", "Stop when aimbot fires to lower inaccuracy.",},
                },
                {
                    {"Backtracking", "Aim at enemy history positions",},
                    {"Resolver", "Improve accuracy when shooting at enemy anti-aim.",},
                },
                {
                    {"Type", "Maximum affects visible animation.", {"Off", "Minimum", "Maximum",},},
                    {"Direction", "Choose mode for selecting direction", {"Auto", "Manual",},},
                    {"Left Side",},
                    {"Right Side",},
                    {"On Enemy Aiming", "Activate anti-aim only when enemy is aiming at you.",},
                    {"Disable On Knife", "Disable anti-aim when holding knife.",},
                    {"Disable On Grenade", "Disable anti-aim when holding a grenade.",},
                },
            },
        },
        {
            {"Aimbot", "Accuracy", "Hitscan", "Anti-Aim",},
            {
                {"Toggle", "Automation", "Target", "Extra",},
                {
                    {"Enable", "Enables rage aimbot.",},
                    {"Aim Key", "Set the aimbot on key.",},
                    {"Toggle Key", "Set the toggle key to enable/disable aimbot.",},
                },
                {
                    {"Auto Pistol", "Makes pistol fire like an automatic weapon.",},
                    {"Auto Revolver", "Auto cocks the revolver for quicker fire.",},
                    {"Auto Scope", "Scopes with sniper automatically when firing.", {"Off", "On - Auto Unzoom", "On - No Unzoom",},}, 
                },
                {
                    {"FOV", "Maximum field of view the aimbot will target within.",},
                    {"Aim Lock", "Increase priority of latest target.",},
                    {"Silent Aim", "Supress view movement when aimbotting.",},
                },
                {
                    {"Knifebot", "Automatically knife when your target is in range.", {"Off", "Default Knifebot", "Only Backstab", "Quick Stab",},},
                },
            },
            {
                {"Weapon", "Position Adjustment", "Movement",},
                {
                    {[5] = true, "Hit Chance", "Minimum chance to hit before aimbot shoots.",},
                    {[5] = true, "Min Damage", "Minimum damage required after wall penetration.",},
                    {[5] = true, "Anti-Recoil", "Counter Weapon Recoil for higher accuracy.",},
                },
                {
                    {"Backtracking", "Aim at enemy history position.",},
                    {"Resolver", "Improve accuracy when shooting at enemy anti-aim.",},
                },
                {
                    {"Auto Stop", "Counter strafe when shooting to lower accuracy.",},
                    {"Auto Duck", "Crouch when shooting to lower inaccuracy.",},
                    {"Slow Walk Key", "Slow down player movement while holding this key.",},
                    {"Slow Walk Speed", "Makes you stop faster by counter strafing.",},
                    {"Quick Stop", "Makes you stop faster by counter strafing.",},
                },
            },
            {
                {"Hitbox Points", "Hitbox Priority", "Mode", "Advanced",},
                {
                    {[2] = "Amount of points the aimbot will scan for.",},
                },
                {
                    {[2] = "Order of points the aimbot go for first.",},
                },
                {
                    {[5] = true, "Auto Wall", "Shoot through penetrable walls.",},
                    {[5] = true, "Delay Shot", "Wait for more accurate hitbox state.",},
                    {[5] = true, "Lethal Bodyaim", "Bodyaim if the damage will be lethal.",},
                },
                {
                    {"Max Processing Time", "Lower this value to maintain better FPS.",},
                },
            },
            {
                {"Base Direction", "Left Direction", "Right Direction", "Condition", "Advanced",},
                {
                    {[6] = true, "Spinbot Speed",},
                    {[6] = true,"Rotation Offset",},
                    {[6] = true,"LBY Offset",},
                },
                {
                    {[6] = true,"Spinbot Speed",},
                    {[6] = true,"Rotation Offset",},
                    {[6] = true,"LBY Offset",},
                },
                {
                    {[6] = true,"Spinbot Speed",},
                    {[6] = true,"Rotation Offset",},
                    {[6] = true,"LBY Offset",},
                },
                {
                    {"Disable On Use", "Disable anti-aim when pressing the use key.",},
                    {"Disable On Knife", "Disable anti-aim when holding knife.",},
                    {"Disable On Grenade", "Disable anti-aim when holding a grenade.",},
                    {"On Shot", "Prevent your on shot model from getting hit.", {"Default", "Desync", "Shift",},},
                },
                {
                    {"Auto Direction", "Enable left/right direction based on nearby walls.",},
                    {"Anti-Alignment", "Prevent allignment of desync anti-aim.",},
                    {"Anti-Resolver", "Makes continous shots harder to hit.",},
                    {"Pitch Angle", "", {"Off", "89°", "180° (Untrusted)",},},
                    {"Fake Duck", "Allows you to shoot higher while crouching",},
                },
            },          
        },
        {
            {"Overlay", "Local", "World", "Chams", "Skins", "Other",},
            {
                {"Friendly", "Enemy", "Weapon",},
                {
                    {"Box", "Draw 2D box around entity.", {"Off", "Outlined", "Normal",},},
                    {"Box Precision", "Match 2D box with model bounds.",},
                    {"Name", "Draw entity name.",},
                    {"Skeleton", "Draw player skeleton.",},
                    {"Glow", "Glow effect on player.", {"Off", "Team Color", "Health Color",},},
                    {"Health", "Configure health options.", [4] = {"Bar", "Number",},},
                    {"Armor", "Configure armor options.", [4] = {"Bar", "Number",},},
                    {"Weapon", "Draw weapon name of player.", {"Off", "Active", "All", "Active + Nades",},},
                    {"Flags", "Show player activity", [4] = {"Defusing", "Planting", "Scoped", "Reloading", "Flashed", "Has Defuser", "Has C4",},},
                    {"Money", "Draw amount of money player has.",},
                    {"Barrel", "Draw lines where players is looking.",},
                },
                {
                    {"Box", "Draw 2D box around entity.", {"Off", "Outlined", "Normal",},},
                    {"Box Precision", "Match 2D box with model bounds.",},
                    {"Name", "Draw entity name.",},
                    {"Skeleton", "Draw player skeleton.",},
                    {"Glow", "Glow effect on player.", {"Off", "Team Color", "Health Color",},},
                    {"Health", "Configure health options.", [4] = {"Bar", "Number",},},
                    {"Armor", "Configure armor options.", [4] = {"Bar", "Number",},},
                    {"Weapon", "Draw weapon name of player.", {"Off", "Active", "All", "Active + Nades",},},
                    {"Flags", "Show player activity", [4] = {"Defusing", "Planting", "Scoped", "Reloading", "Flashed", "Has Defuser", "Has C4",},},
                    {"Money", "Draw amount of money player has.",},
                    {"Barrel", "Draw lines where players is looking.",},
                },
                {
                    {"Box", "Draw 2D box around entity.", {"Off", "Outlined", "Normal",},},
                    {"Box Precision", "Match 2D box with model bounds.",},
                    {"Name", "Draw entity name.",},
                    {"Ammo", "Amount of ammo left in weapon.",},
                    {"C4 Timer", "Display time till C4 explosion.",},
                    {"Danger Zone Items", "Various items from danger zone.",},
                    {"Danger Zone Turret", "Turret from danger zone.",},
                },
            },
            {
                {"Camera", "Helper",},
                {
                    {"Third Person Toggle", "Toggle third person view with this key.",},
                    {"Third Person Distance", "Distance of the camera.",},
                    {"Smooth Ghost Model", "Match fake ghost position with real.",},
                },
                {
                    {"Wallbang Damage", "Show penetrable space on walls.",},
                    {"Out Of View", "Display out of view enemies indicators.",},  
                },
            },
            {
                {"Extra", "Materials", "Nade",},
                {
                    {"Hitmarkers", "Play a sound when hitting an enemy.",},
                    {"Sounds", "Display audible sounds on screen.",},
                },
                {
                    {"Walls Color",},
                    {"Static Props Color",},
                    {"Skybox", "Change how the sky looks.",},
                },
                {
                    {"Inferno", "Draw molotov covered inerno.", [4] = {"Local", "Friendly", "Enemy",},},
                    {"Grenade Tracer", "Visualize predicted grenade trajectory.", [4] = {"Local", "Friendly", "Enemy",},},
                },
            },
            {
                {"Friendly", "Enemy", "Local", "Ghost", "Backtrack", "Weapon",},
                {
                    {"Occluded", "Material occluded by walls.", {"Off", "Flat", "Color", "Metalic", "Glow",},},
                    {"Visible", "Visible material.", {"Off", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Overlay", "Apply over previus materials.", {"Off", "Wireframe",},},
                },
                {
                    {"Occluded", "Material occluded by walls.", {"Off", "Flat", "Color", "Metalic", "Glow",},},
                    {"Visible", "Visible material.", {"Off", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Overlay", "Apply over previus materials.", {"Off", "Wireframe",},},
                },
                {
                    {"Occluded", "Material occluded by walls.", {"Off", "Flat", "Color", "Metalic", "Glow",},},
                    {"Visible", "Visible material.", {"Off", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Overlay", "Apply over previus materials.", {"Off", "Wireframe",},},
                },
                {
                    {"Occluded", "Material occluded by walls.", {"Off", "Flat", "Color", "Metalic", "Glow",},},
                    {"Visible", "Visible material.", {"Off", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Overlay", "Apply over previus materials.", {"Off", "Wireframe",},},
                },
                {
                    {"Occluded", "Material occluded by walls.", {"Off", "Flat", "Color", "Metalic", "Glow",},},
                    {"Visible", "Visible material.", {"Off", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Overlay", "Apply over previus materials.", {"Off", "Wireframe",},},
                },
                {
                    {"Occluded", "Material occluded by walls.", {"Off", "Flat", "Color", "Metalic", "Glow",},},
                    {"Visible", "Visible material.", {"Off", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Overlay", "Apply over previus materials.", {"Off", "Wireframe",},},
                },
            },
            {
                {"Change visual items",},
                {
                    {"Item", "Select weapon or model.",},
                    {"Paint Kits", "Select skin of model",},
                    {"Wear", "Quality of item texture.",},
                    {"Seed", "Seed of texture generation.",},
                    {"StatTrak", "Kill counter of weapon.",},
                    {"Name", "Custom name of item.",},
                    {"Add",},
                    {"Remove",},
                },
            },
            {
                {"Extra", "Performance", "Effects",},
                {
                    {"Radar", "Display custom radar.",},
                    {"Radar Range", "Set radar range.",},
                    {"Crosshair", "Display custom crosshair.",},
                    {"Crosshair Recoil", "Draws the spot where your shots will go.", {"Off", "Line", "Fade",},},
                    {"Anti-OBS", "Hide visuals from screen recorder.",},
                    {"Anti-Screenshot", "Hide visuals from screenshots.",},
                    {"Preserve Killfeed", "Preserve the killfeed.",},
                },
                {
                    {"No Render For Teammates",},
                    {"No Render For Enemies",},
                    {"No Render For Weapons",},
                    {"No Render For Ragdolls",},
                    {"Disable Far Models",},
                },
                {
                    {"No Flash",},
                    {"No Smoke",},
                    {"No Recoil",},
                    {"No Scope",},
                    {"No Scope Overlay",},
                    {"No Sky",},
                    {"No Fog",},
                    {"No Post Processing",},
                },
            },
        },
        {
            {"General", "Movement", "Enhancement",},
            {
                {"Extra", "Logs", "Restrictions", "Bypass", "Server",},
                {
                    {"Show Spectators", "See who is spectating you.",},
                    {"Show Ranks", "Show ranks of players.",},
                    {"Auto-Accept Match", "Automatically accept match.",},
                },
                {
                    {"Log Damage", "Log damage dealt to enemies.",},
                    {"Log Purchases", "Log purchases made by enemy team.",},
                    {"Log Console", "Log Console messages on screen.",},
                },
                {
                    {"Anti-Untrusted", "Restrict Various features on Valve servers.",},
                },
                {
                    {"Bypass sv_pure", "Allow custom models and materials from csgo directory.",},
                    {"Bypass sv_cheats", "Bypass protected convars.",},
                    {"Unlock Steam Achievements",},
                    {"Show hidden ConVars",},
                },
                {
                    {"sv_maxunlag", "Configure server-side max backtracking factor.",},
                    {"sv_maxusrcmdprocessticks", "Configure server-side max lag factor.",},
                },
            },
            {
                {"Jump", "Other", "Strafe",},
                {
                    {"Auto Jump", "Select auto jump mode for bunnyhopping.", {"Off", "Perfect", "Legit",},},
                    {"Edge Jump", "Jump right before falling of an edge.",},
                    {"Duck Jump", "Reach higher by crouching while jumping.",},
                    {"Auto Jump-Bug", "No fall damage when landing from certain height.",},
                },
                {
                    {"Fast Duck", "Exploit movement code to crouch quicker.",},
                    {"Slide Walk", "Glitch animation to appear sliding."},
                },
                {
                    {"Enable", "Enable autostrafer to gain more speed.",},
                    {"Air Strafe", "Increases forward speed while jumping.",},
                    {"Strafe Mode", "Select style of autostrafing.", {"Silent", "Normal", "Sideways", "W-Only", "Mouse",},},
                    {"Circle Strafe", "Strafe in circles when pressing a key.",},
                    {"Snake Strafe", "Strafe like a snake when pressing a key.",},
                    {"Retrack Speed", "Autostrafe in direction of pressed keys.",},
                    {"WASD-Movement", "Autostrafe in direction of pressed keys.",},
                },
            },
            {
                {"Fakelag", "Fakelatency", "Appearance",},
                {
                    {"Enable", "Enable lag effect.",},
                    {"On Key", "Enable lag only when holding this key.",},
                    {"Type", 'Type or "patern" of lag.', {"Normal", "Adaptive", "Random", "Switch",},},
                    {"Factor", "How many commands will be chocked.",},
                    {"Enable Peek Mode", "Lag your model behind wall when peeking.",},
                    {"Conditions", "Configure fakelag options.", [4] = {"While Standing", "While In Air", "While On Ground",},},
                },
                {
                    {"Enable", "Enable latency modifier.",},
                    {"On Key", "Increase latency only when holding this key.",},
                    {"Amount", "Absolute latency to achieve.",},
                },
                {
                    {"Steal Name", "Steal other player name, limited to 5 times.",},
                    {"Invisible Name", "Make your name invisible",},
                    {"Chat Spam", "Advertise AIMWARE in chat.",},
                    {"Clantag Changer", "Put AIMWARE as your clantag.",},
                },
            },
        },
        {
            {"Configurations", "Lua Scripts", "Advanced",},
            {
                {"Manage configurations",},
                {
                    {"Name", "Create or rename configuration.",},
                    {"Create",},
                    {"Rename",},
                    {"Load",},
                    {"Save",},
                    {"Reset",},
                    {"Delete",},
                    {"Export To Clipboard",},
                    {"Import From Clipboard",},
                    {"Set As Default",},
                    {"Refresh List",},
                },
            },
            {
                {"Manage scripts",},
                {
                    {"Name", "Create or rename configuration.",},
                    {"Create",},
                    {"Rename",},
                    {"Edit (BETA)",},
                    {"Load",},
                    {"Unload",},
                    {"Reset Lua State",},
                    {"Delete",},
                    {"Set As Autorun",},
                    {"Refresh List",},
                },
            },
            {
                {"Manage Advanced Settings",},
                {
                    {"Open Menu Key", "Bind for main menu toggle.",},
                    {"Open Console Key", "Console for more customization.",},
                    {"Dpi Scale", "Scale the UI size by this amount.",},
                    {"Open Settings Folder",},
                    {"Menu Language",},
                },
            },
        },
    },
    ["中文"] = {
        {"合法选项", "暴力选项", "视觉效果", "其他杂项", "设置",},
        {
            {"自动瞄准", "自动扳机", "武器配置", "其他杂项", "半暴力设置",},
            {
                {"自瞄开关", "武器设置", "命中部位选择",},
                {
                    {"启用", "启用自动瞄准",},
                    {"自瞄按键绑定", "为自瞄设置按键",},
                    {"自瞄开关按键绑定", "设置开关按键，用以切换自瞄 开启/关闭",},
                },
                {
                    {"自动开火", "无需按键自动开火",},
                    {"自瞄时开枪", "按下自瞄按键时自动开枪",},
                    {"自动手枪速率", "自动手枪的开枪间隔",},
                },
                {
                    {[2] = "选择自瞄部位并设置优先级"},
                    {[5] = true, "命中部位的切换速度",},
                    {[5] = true, "第一次优先瞄准准星附近的部位",},
                },
            },
            {
                {"扳机开关", "武器设置", "命中部位选择",},
                {
                    {"启用", "启用自动扳机",},
                    {"扳机按键绑定", "为扳机设置按键",},
                    {"自动开火", "无需按键自动开火",},
                },
                {
                    {[5] = true, "扳机延迟", "扳机触发后开枪的延迟",},
                    {[5] = true, "射击时长", "扳机触发后连续开枪的时间",},
                    {[5] = true, "命中几率", "扳机触发后开枪的最小命中几率",},
                    {[5] = true, "无后坐力", "扳机触发时开火的后坐力控制",},
                },
                {
                    {[2] = "选择可以触发扳机的部位",},
                },
            },
            {
                {"准确性", "目标选择", "瞄准设置", "可见性",},
                {
                    {[5] = true, "自动压枪", "拟真自动压枪",},
                    {[5] = true, "全局自动压枪", "不自瞄时也可以压枪",},
                    {[5] = true, "水平压强力度", "左右方向压强的力度",},
                    {[5] = true, "垂直压强力度", "上下方向压强的力度",},
                },
                {
                    {[5] = true, "最小自瞄范围", "自瞄的最小范围",},
                    {[5] = true, "最大自瞄范围", "自瞄的最大范围",},
                    {[5] = true, "目标切换延迟", "自瞄切换下一个目标的延迟",},
                    {[5] = true, "开枪延迟", "自瞄首次开枪的延迟",},
                },
                {
                    {[5] = true, "自瞄平滑度", "准星移动到敌人身上的速度",},
                    {[5] = true, "自瞄平滑模式", "动态为多部位自瞄，静态为锁定自瞄", {"动态", "静态",},},
                    {[5] = true, "自瞄随机部位", "越高越合法，越低越精准",},
                    {[5] = true, "自瞄拉枪曲线", "越高越合法，越低越精准",},
                },
                {
                    {[5] = true, "自动穿墙", "可以隔着墙壁自瞄目标",},
                    {[5] = true, "无视烟雾", "可以隔着烟雾自瞄目标",},
                },
    
            },
            {
                {"行走设置", "其他功能",},
                {
                    {"静步速度修改", "启用静步的速度修改",},
                    {"静步速度", "设置静步的速度",},
                    {"快速急停", "可以让准星扩散更快降低",},
                },
                {
                    {"回溯时间", "可以打击的回溯时长",},
                    {"自动刀人", "为匕首启用扳机",},
                },
            },
            {
                {"自瞄设置", "位置修正", "反自瞄(合法AA)",},
                {
                    {"静默瞄准", "在小范围内启用静默自瞄",},
                    {"自动急停", "自瞄时会停止走路提高准确性",},
                },
                {
                    {"回溯", "瞄准敌人曾经的行走轨迹",},
                    {"解析器", "解析敌人的反自瞄增加命中率",},
                },
                {
                    {"模式", "真假身分离程度", {"关闭", "小角度分离", "大角度分离",},},
                    {"方向设置", "方向切换模式", {"自动方向", "手动调整",},},
                    {"左侧身按键(真身在左假身在右)",},
                    {"右侧身按键(真身在右假身在左)",},
                    {"仅敌人瞄准时启用", "仅当敌人瞄准你时启用反自瞄",},
                    {"持刀时禁用", "持刀时禁用反自瞄",},
                    {"持投掷物时禁用", "持投掷物时禁用反自瞄",},
                },
            },
        },
        {
            {"自动瞄准", "精确调整", "部位选择", "反自瞄",},
            {
                {"自瞄开关", "自动设置", "目标选择", "其他功能",},
                {
                    {"启用", "启用暴力自瞄",},
                    {"暴力自瞄按键设置", "自动开枪则不需要设置按键",},
                    {"自瞄开关按键绑定", "设置开关按键，用以切换自瞄 开启/关闭",},
                },
                {
                    {"自动手枪", "手枪会自动连发",},
                    {"自动左轮", "左轮手枪会自动预热无需蓄力",},
                    {"自动开镜", "开枪前会自动打开瞄准镜", {"关闭", "自动开关镜", "仅自动开镜",},}, 
                },
                {
                    {"自瞄范围", "自瞄的范围设置",},
                    {"自瞄锁定", "准星锁定目标",},
                    {"静默瞄准", "隐藏自瞄拉枪动画",},
                },
                {
                    {"自动刀人", "在可攻击的范围内自动刀人", {"关闭", "正常模式", "只背刺", "只轻刀",},},
                },
            },
            {
                {"武器", "位置调整", "运动",},
                {
                    {[5] = true, "命中几率", "在命中率达到预设值时开枪",},
                    {[5] = true, "最低伤害", "当可造成伤害打到预设值时开枪",},
                    {[5] = true, "自动压枪", "自瞄时开启暴力压枪",},
                },
                {
                    {"回溯", "瞄准敌人曾经的行走轨迹",},
                    {"解析器", "解析敌人的反自瞄增加命中率",},
                },
                {
                    {"自动急停", "自瞄时会停止走路提高准确性",},
                    {"自动蹲伏", "开枪前自动蹲伏",},
                    {"慢走按键绑定", "按住按键时将限制移动速度",},
                    {"慢走速度", "慢走的速度调整",},
                    {"快速停止", "慢走的速度调整",},
                },
            },
            {
                {"多点射击部位", "优先自瞄部位", "自瞄模式", "高级设置",},
                {
                    {[2] = "每个部位多点扫码的数量",},
                },
                {
                    {[2] = "自瞄优先射击的部位",},
                },
                {
                    {[5] = true, "自动穿墙", "开启后自动射击可以穿透的目标",},
                    {[5] = true, "延迟射击", "设置开枪延迟以更精准打击目标",},
                    {[5] = true, "可击杀时Baim", "如果可以一击必杀时将打击身体",},
                },
                {
                    {"最长处理时间", "降低增加帧率，提高增加准确性",},
                },
            },
            {
                {"基础方向", "左方向", "右方向", "启用条件", "高级设置",},
                {
                    {[6] = true, "陀螺速度",},
                    {[6] = true,"真身偏移",},
                    {[6] = true,"假身偏移",},
                },
                {
                    {[6] = true, "陀螺速度",},
                    {[6] = true,"真身偏移",},
                    {[6] = true,"假身偏移",},
                },
                {
                    {[6] = true, "陀螺速度",},
                    {[6] = true,"真身偏移",},
                    {[6] = true,"假身偏移",},
                },
                {
                    {"使用物品时禁用反自瞄", "按下使用键(默认为E)时，禁用反自瞄",},
                    {"持刀时禁用反自瞄", "当你持刀时，禁用反自瞄",},
                    {"持投掷物时禁用反自瞄", "当你持投掷物时，禁用反自瞄",},
                    {"开枪不抬头", "防止开枪时被抓抬头", {"默认", "不同步", "转移",},},
                },
                {
                    {"自动藏头", "在掩体后时会自动调整反自瞄方向",},
                    {"防止重合", "防止不同步模式下真假身重合",},
                    {"反解析器", "使连续开火更难击中你",},
                    {"头部位置", "", {"关", "89度低头", "180度低头(不可信)",},},
                    {"假蹲", "长按可以蹲伏并且拥有站立时的射击视野",},
                },
            },          
        },
        {
            {"透视功能", "自身视觉", "全局视觉", "实体上色", "皮肤修改", "其他功能",},
            {
                {"友军", "敌军", "武器",},
                {
                    {"方框透视", "在目标周围绘制2D方框", {"关闭", "粗体", "正常",},},
                    {"动态方框", "方框会自动调整大小",},
                    {"显示名称", "显示目标名称",},
                    {"显示骨骼", "显示目标骨骼",},
                    {"边缘发光", "目标模型边缘发光", {"关闭", "自定颜色", "血量颜色",},},
                    {"显示血量", "显示目标生命值", [4] = {"血量条", "数字",},},
                    {"显示护甲", "显示目标护甲值", [4] = {"护甲条", "数字",},},
                    {"显示武器", "显示目标的武器", {"关闭", "当前武器", "全部武器", "当前武器+投掷物",},},
                    {"显示状态", "显示目标当前状态", [4] = {"拆除C4中", "安装C4中", "开镜中", "换弹中", "致盲中", "拥有拆弹器", "拥有C4",},},
                    {"显示金钱", "显示目标拥有的金钱",},
                    {"显示视线", "显示目标瞄准视线",},
                },
                {
                    {"方框透视", "在目标周围绘制2D方框", {"关闭", "粗体", "正常",},},
                    {"动态方框", "方框会自动调整大小",},
                    {"显示名称", "显示目标名称",},
                    {"显示骨骼", "显示目标骨骼",},
                    {"边缘发光", "目标模型边缘发光", {"关闭", "自定颜色", "血量颜色",},},
                    {"显示血量", "显示目标生命值", [4] = {"血量条", "数字",},},
                    {"显示护甲", "显示目标护甲值", [4] = {"护甲条", "数字",},},
                    {"显示武器", "显示目标的武器", {"关闭", "当前武器", "全部武器", "当前武器+投掷物",},},
                    {"显示状态", "显示目标当前状态", [4] = {"拆除C4中", "安装C4中", "开镜中", "换弹中", "致盲中", "拥有拆弹器", "拥有C4",},},
                    {"显示金钱", "显示目标拥有的金钱",},
                    {"显示视线", "显示目标瞄准视线",},
                },
                {
                    {"方框透视", "在目标周围绘制2D方框", {"关闭", "粗体", "正常",},},
                    {"动态方框", "方框会自动调整大小",},
                    {"显示名称", "显示目标名称",},
                    {"显示弹药", "显示目标武器的弹药",},
                    {"C4计时器", "显示C4爆炸/拆除的计时器",},
                    {"头号特训物品", "显示头号特训的物品",},
                    {"头号特训炮塔", "显示头号特训的炮塔",},
                },
            },
            {
                {"视角设置", "辅助功能",},
                {
                    {"第三人称切换按键", "按下切换第三/第一人称视角",},
                    {"第三人称距离", "设置第三人称的视野距离",},
                    {"平滑假身模型", "将假身位置与真身匹配",},
                },
                {
                    {"显示穿墙伤害", "在可穿透墙壁上显示穿透的伤害值",},
                    {"敌人指示器", "用箭头显示视野外的敌人",},  
                },
            },
            {
                {"其他功能", "材质", "投掷物",},
                {
                    {"命中音效", "命中敌人时启用提示音效",},
                    {"声纳", "显示发出声音的位置",},
                },
                {
                    {"墙体上色",},
                    {"静态道具上色",},
                    {"天空修改器", "更改地图的天空贴图",},
                },
                {
                    {"燃烧弹范围", "显示燃烧弹的范围", [4] = {"自己", "友军", "敌军",},},
                    {"投掷物指示器", "显示投掷物的抛物线", [4] = {"自己", "友军", "敌军",},},
                },
            },
            {
                {"友军上色", "敌军上色", "自身上色", "假身上色 ", "回溯上色", "武器上色",},
                {
                    {"不可见部位", "在掩体后的模型部位上色", {"关闭", "平面", "模型上色", "金属质感", "模型发光",},},
                    {"可见部位", "可见状态下模型部位上色", {"关闭", "平面", "模型上色", "金属质感", "模型发光", "纹理", "透明",},},
                    {"附加效果", "附加在模型上的材质", {"关闭", "线框",},},
                },
                {
                    {"不可见部位", "在掩体后的模型部位上色", {"关闭", "平面", "模型上色", "金属质感", "模型发光",},},
                    {"可见部位", "可见状态下模型部位上色", {"关闭", "平面", "模型上色", "金属质感", "模型发光", "纹理", "透明",},},
                    {"附加效果", "附加在模型上的材质", {"关闭", "线框",},},
                },
                {
                    {"不可见部位", "在掩体后的模型部位上色", {"关闭", "平面", "模型上色", "金属质感", "模型发光",},},
                    {"可见部位", "可见状态下模型部位上色", {"关闭", "平面", "模型上色", "金属质感", "模型发光", "纹理", "透明",},},
                    {"附加效果", "附加在模型上的材质", {"关闭", "线框",},},
                },
                {
                    {"不可见部位", "在掩体后的模型部位上色", {"关闭", "平面", "模型上色", "金属质感", "模型发光",},},
                    {"可见部位", "可见状态下模型部位上色", {"关闭", "平面", "模型上色", "金属质感", "模型发光", "纹理", "透明",},},
                    {"附加效果", "附加在模型上的材质", {"关闭", "线框",},},
                },
                {
                    {"不可见部位", "在掩体后的模型部位上色", {"关闭", "平面", "模型上色", "金属质感", "模型发光",},},
                    {"可见部位", "可见状态下模型部位上色", {"关闭", "平面", "模型上色", "金属质感", "模型发光", "纹理", "透明",},},
                    {"附加效果", "附加在模型上的材质", {"关闭", "线框",},},
                },
                {
                    {"不可见部位", "在掩体后的模型部位上色", {"关闭", "平面", "模型上色", "金属质感", "模型发光",},},
                    {"可见部位", "可见状态下模型部位上色", {"关闭", "平面", "模型上色", "金属质感", "模型发光", "纹理", "透明",},},
                    {"附加效果", "附加在模型上的材质", {"关闭", "线框",},},
                },
            },
            {
                {"已修改的皮肤列表",},
                {
                    {"选择项目", "选择武器或模型",},
                    {"选择皮肤", "为项目选择皮肤",},
                    {"调整磨损", "调整皮肤的磨损度",},
                    {"皮肤种子", "设置皮肤种子代码",},
                    {"StatTrak计数器", "设置皮肤击杀计数器",},
                    {"皮肤名称", "自定义皮肤名称(中文请粘贴)",},
                    {"添加皮肤",},
                    {"删除皮肤",},
                },
            },
            {
                {"其他功能", "性能优化", "特效移除",},
                {
                    {"雷达", "显示AIMWARE雷达",},
                    {"雷达范围", "调整雷达范围(雷达大小请拖动雷达边缘)",},
                    {"准星", "显示AIMWARE准星",},
                    {"后坐力准星", "准星会跟随后坐力变化", {"关闭", "线体", "变暗",},},
                    {"反OBS", "在大部分直播工具的窗口录制下隐藏视觉",},
                    {"反截屏", "在Steam截图中隐藏视觉效果",},
                    {"击杀保留", "右上角保留自己的击杀记录",},
                },
                {
                    {"隐藏友军模型",},
                    {"隐藏敌军模型",},
                    {"隐藏武器模型",},
                    {"隐藏尸体模型",},
                    {"隐藏远处模型",},
                },
                {
                    {"屏蔽闪光",},
                    {"屏蔽烟雾",},
                    {"屏蔽后坐动画",},
                    {"屏蔽开镜缩放",},
                    {"屏蔽开镜黑边",},
                    {"屏蔽天空",},
                    {"屏蔽雾气",},
                    {"屏蔽后期处理",},
                },
            },
        },
        {
            {"一般功能", "行动功能", "增强功能",},
            {
                {"其他功能", "日志记录", "限制设置", "绕过设置", "服务器设置",},
                {
                    {"观察者列表", "显示正在观看你的玩家列表",},
                    {"显示段位", "显示所有玩家的官匹段位",},
                    {"自动接受比赛", "自动接受匹配到的比赛",},
                },
                {
                    {"显示伤害日志", "显示玩家造成伤害的记录",},
                    {"显示购买日志", "显示玩家购买物品的记录",},
                    {"显示控制台日志", "显示游戏控制台记录",},
                },
                {
                    {"反不可信", "在VAC服务器中避免被不可信封禁",},
                },
                {
                    {"绕过模型检测", "允许使用CSGO目录的自定义模型和材质",},
                    {"绕过指令检测", "部分服务器上使用作弊指令",},
                    {"一键解锁CSGO成就",},
                    {"显示隐藏指令",},
                },
                {
                    {"sv_maxunlag", "设置服务器上可使用的最大回溯值",},
                    {"sv_maxusrcmdprocessticks", "设置服务器上可使用的最大假卡值",},
                },
            },
            {
                {"自动连跳", "其他功能", "自动转向",},
                {
                    {"自动连跳", "选择自动连跳的方式", {"关闭", "完美连跳", "合法连跳",},},
                    {"边缘跳跃", "走到边缘时自动跳跃",},
                    {"跳蹲", "跳跃时蹲下以到达一些特定的位置",},
                    {"BUG跳", "从一定高度跳下时不会摔伤",},
                },
                {
                    {"快速蹲起", "绕过游戏的蹲起速度限制",},
                    {"滑步", "走路动画变为滑动"},
                },
                {
                    {"启用", "开启自动转向",},
                    {"空中加速", "在空中时增加移动速度",},
                    {"加速模式", "选择加速模式", {"静默", "正常", "侧身", "按住W时", "跟随准星",},},
                    {"绕圈跳", "按住后原地绕圈跳跃",},
                    {"蛇形跳", "按住后原地蛇形跳跃",},
                    {"转向加速速度", "自动转向的速度",},
                    {"全方向转向", "可以向后方和侧方自动转向",},
                },
            },
            {
                {"假卡", "加延迟", "出现",},
                {
                    {"启用", "启用假卡功能",},
                    {"假卡按键绑定", "按下启用假卡松开禁用，如不绑定则保持开启",},
                    {"假卡模式", '选择假卡模式', {"正常", "自适应", "随机", "开关",},},
                    {"假卡阈值", "设置假卡Tick阈值",},
                    {"启用Peek模式", "Pekk时启用假卡",},
                    {"启用条件", "选择假卡开启条件", [4] = {"站立时启用", "在空中时启用", "地面上启用",},},
                },
                {
                    {"启用", "启用假延迟修改",},
                    {"开关键", "仅在按住按键时修改延迟",},
                    {"假延迟阈值", "设置假的ping值",},
                },
                {
                    {"窃取名称", "窃取其他玩家的名称,官匹服务器限制五次",},
                    {"隐藏名称", "使你的名称不可见",},
                    {"聊天刷屏", "在公平发送AIMWARE广告",},
                    {"启用组名", "显示AIMWARE组名",},
                },
            },
        },
        {
            {"参数设置", "Lua脚本", "高级功能",},
            {
                {"管理参数",},
                {
                    {"参数名称", "创建或重命名参数",},
                    {"新建参数",},
                    {"重命名",},
                    {"加载参数",},
                    {"保存参数",},
                    {"恢复默认",},
                    {"删除参数",},
                    {"导出到剪贴板",},
                    {"从剪贴板导入",},
                    {"设为默认",},
                    {"刷新列表",},
                },
            },
            {
                {"管理脚本",},
                {
                    {"脚本名称", "创建或重命名脚本",},
                    {"新建脚本",},
                    {"重命名",},
                    {"编辑 (测试)",},
                    {"加载脚本",},
                    {"卸载脚本",},
                    {"重置脚本状态",},
                    {"删除脚本",},
                    {"自动载入",},
                    {"刷新列表",},
                },
            },
            {
                {"高级设置",},
                {
                    {"菜单按键", "设置主菜单按键",},
                    {"控制台按键", "设置控制台按键",},
                    {"界面缩放", "设置界面大小",},
                    {"打开AIMWARE文件夹",},
                    {"菜单语言",},
                },
            },
        },
    },
    ["Español"] = {
        {"Legitbot", "Ragebot", "Visuals", "Misc", "Configuración",},
        {
            {"Aimbot", "Triggerbot", "Arma", "Otro", "Semirage",},
            {
                {"Toggle", "Arma", "Selección de Hitbox",},
                {
                    {"Habilitar", "Habilita aimbot legítimo",},
                    {"Objetivo clave", "Establecer el aimbot en clave",},
                    {"Toggle Key", "Establecer la tecla de alternancia para habilitar / deshabilitar aimbot",},
                },
                {
                    {"Auto Disparo", "Se dispara sin presionar ninguna tecla",},
                    {"Fire On Press", "Se dispara al presionar la tecla aimbot",},
                    {"Intervalo automático de pistola", "Intervalo entre disparos para el modo automático",},
                },
                {
                    {[2] = "Orden de hitboxes que el aimbot elegirá."},
                    {[5] = true, "Hitbox Advance Multipler", "Qué tan rápido debe pasar el aimbot al siguiente hitbox",},
                    {[5] = true, "Nearest to Crosshair", "Prioridad hitbox más cercano al punto de mira como primero",},
                },
            },
            {
                {"Toggle", "Arma", "Escaneo de Hitbox",},
                {
                    {"Habilitar", "Habilita triggerbot",},
                    {"Trigger Key", "Activar triggerbot al presionar la tecla",},
                    {"Auto Disparo", "Deje que el disparador se dispare sin presionar ninguna tecla",},
                },
                {
                    {[5] = true, "Demora de disparo", "Disparo de demora después del bloqueo de disparo",},
                    {[5] = true, "Trigger Burst", "Seguir disparando después del bloqueo del gatillo",},
                    {[5] = true, "Probabilidad de golpe", "Probabilidad mínima de golpear antes de disparar el gatillo",},
                    {[5] = true, "Anti-Recoil", "Cuenta para el retroceso cuando se activa el escaneo",},
                },
                {
                    {[2] = "Activar en hitboxes seleccionados",},
                },
            },
            {
                {"Precisión", "Objetivo", "Apuntar", "Visibilidad",},
                {
                    {[5] = true, "Sistema de control de retroceso", "Contraatacar suavemente el retroceso del arma",},
                    {[5] = true, "Control de retroceso independiente", "Habilitar RCS mientras apunta libremente",},
                    {[5] = true, "Retroceso horizontal", "Cuánto retroceso horizontal se contrarrestará",},
                    {[5] = true, "Retroceso vertical", "Cuánto se contrarrestará el retroceso vertical",},
                },
                {
                    {[5] = true, "Rango de campo de visión mínimo", "Campo de visión mínimo para bloqueo de puntería",},
                    {[5] = true, "Rango de campo de visión máximo", "Campo de visión máximo para bloqueo de puntería",},
                    {[5] = true, "Retardo de cambio de objetivo", "Tiempo que elbot objetivo esperará antes de cambiar de objetivo",},
                    {[5] = true, "Retraso en el primer disparo", "Tiempo hasta que el objetivo dispara el primer disparo",},
                },
                {
                    {[5] = true, "Factor suave", "Suavizar el movimiento del objetivo",},
                    {[5] = true, "Método suave", "Método a utilizar para un movimiento suave", {"Dinámico", "Estático",},},
                    {[5] = true, "Factor de aleatorización", "Aleatorizar la posición de destino del objetivo",},
                    {[5] = true, "Factor de curva", "Cuán no lineal será el movimiento",},
                },
                {
                    {[5] = true, "Muro automático", "Fuego a través de muros penetrables",},
                    {[5] = true, "A través del humo", "Fuego a través del humo",},
                },

            },
            {
                {"Movimiento", "Extra",},
                {
                    {"Personalización de la velocidad de marcha", "Habilitar modificaciones de la velocidad de marcha",},
                    {"Velocidad de caminata", "Modifique la velocidad de caminata con esta cantidad",},
                    {"Parada rápida", "Hace que te detengas más rápido al contraatacar",},
                },
                {
                    {"Tiempo de retroceso", "Cuántas posiciones en el pasado están permitidas",},
                    {"Knife Triggerbot", "Activar cuchillo triggerbot",},
                },
            },
            {
                {"Aimbot", "Ajuste de posición", "Anti-objetivo",},
                {
                    {"Apunte silencioso", "Apuntar automáticamente cuando está en el rango de campo de visión bajo",},
                    {"Auto Stop", "Stop cuando aimbot dispara para disminuir la inexactitud",},
                },
                {
                    {"Retroceder", "Apuntar a las posiciones de la historia del enemigo",},
                    {"Resolver", "Mejora la precisión al disparar contra el objetivo anti-objetivo",},
                },
                {
                    {"Tipo", "Máximo afecta la animación visible", {"Desactivado", "Mínimo", "Máximo",},},
                    {"Dirección", "Elija el modo para seleccionar la dirección", {"Auto", "Manual",},},
                    {"Lado izquierdo",},
                    {"Lado derecho",},
                    {"En el objetivo enemigo", "Activa el anti-objetivo solo cuando el enemigo te está apuntando",},
                    {"Desactivar en cuchillo", "Desactivar antipunza al sostener el cuchillo",},
                    {"Desactivar en granada", "Desactivar anti-puntería al sostener una granada",},
                },
            },
        },
        {
            {"Aimbot", "Precisión", "Hitscan", "Anti-Aim",},
            {
                {"Toggle", "Automatización", "Destino", "Extra",},
                {
                    {"Activar", "Activa rab aimbot",},
                    {"Objetivo clave", "Establecer el aimbot en clave",},
                    {"Toggle Key", "Establecer la tecla de alternancia para habilitar / deshabilitar aimbot",},
                },
                {
                    {"Pistola automática", "Hace que la pistola dispare como un arma automática",},
                    {"Auto Revolver", "Auto arma el revólver para disparar más rápido",},
                    {"Auto Scope", "Alcanza con francotirador automáticamente al disparar", {"Off", "On - Auto Unzoom", "On - No Unzoom",},},
                },
                {
                    {"FOV", "Campo de visión máximo al que apuntará el aimbot",},
                    {"Apuntar Bloqueo", "Aumentar la prioridad del último objetivo",},
                    {"Objetivo silencioso", "Suprime el movimiento de la vista al apuntar",},
                },
                {
                    {"Knifebot", "Cuchillo automático cuando tu objetivo está dentro del alcance", {"Off", "Knifebot predeterminado", "Solo puñalada por la espalda", "Quick Stab",},},
                },
            },
            {
                {"Arma", "Ajuste de posición", "Movimiento",},
                {
                    {[5] = true, "Probabilidad de golpe", "Probabilidad mínima de golpear antes de que el objetivo dispare",},
                    {[5] = true, "Daño mínimo", "Daño mínimo requerido después de la penetración en la pared",},
                    {[5] = true, "Anti-Recoil", "Counter Weapon Recoil para mayor precisión",},
                },
                {
                    {"Retroceder", "Apuntar a la posición del historial del enemigo",},
                    {"Resolver", "Mejora la precisión al disparar contra el objetivo anti-objetivo",},
                },
                {
                    {"Auto Stop", "Counter strafe al disparar con menor precisión",},
                    {"Auto Duck", "Agáchate al disparar para reducir la inexactitud",},
                    {"Slow Walk Key", "Reduzca el movimiento del jugador mientras mantiene presionada esta tecla",},
                    {"Velocidad de caminata lenta", "Hace que te detengas más rápido al contraatacar",},
                    {"Parada rápida", "Hace que te detengas más rápido al contraatacar.",},
                },
            },
            {
                {"Puntos Hitbox", "Prioridad Hitbox", "Modo", "Avanzado",},
                {
                    {[2] = "Cantidad de puntos que buscará el aimbot",},
                },
                {
                    {[2] = "Orden de puntos para el que apunta el aimbot primero",},
                },
                {
                    {[5] = true, "Muro automático", "Dispara a través de muros penetrables",},
                    {[5] = true, "Disparo diferido", "Espere un estado de hitbox más preciso",},
                    {[5] = true, "Bodyaim letal", "Bodyaim si el daño será letal",},
                },
                {
                    {"Tiempo máximo de procesamiento", "Baje este valor para mantener un mejor FPS",},
                },
            },
            {
                {"Dirección base", "Dirección izquierda", "Dirección derecha", "Condición", "Avanzado",},
                {
                    {[6] = true, "Velocidad Spinbot",},
                    {[6] = true, "Desplazamiento de rotación",},
                    {[6] = true, "Desplazamiento LBY",},
                },
                {
                    {[6] = true, "Velocidad Spinbot",},
                    {[6] = true, "Desplazamiento de rotación",},
                    {[6] = true, "Desplazamiento LBY",},
                },
                {
                    {[6] = true, "Velocidad Spinbot",},
                    {[6] = true, "Desplazamiento de rotación",},
                    {[6] = true, "Desplazamiento LBY",},
                },
                {
                    {"Desactivar en uso", "Desactivar antirrebote al presionar la tecla de uso",},
                    {"Desactivar en cuchillo", "Desactivar antipunza al sostener el cuchillo",},
                    {"Desactivar en granada", "Desactivar anti-puntería al sostener una granada",},
                    {"On Shot", "Evita que tu modelo en tiro sea golpeado", {"Predeterminado", "Desync", "Shift",},},
                },
                {
                    {"Dirección automática", "Activar dirección izquierda / derecha en función de muros cercanos",},
                    {"Anti-Alineamiento", "Prevenir la alineación del desync anti-objetivo",},
                    {"Anti-Resolver", "Hace que los disparos continuos sean más difíciles de golpear",},
                    {"Pitch Angle", "", {"Off", "89 °", "180 ° (No confiable)",},},
                    {"Pato falso", "Te permite disparar más alto mientras te agachas",},
                },
            },
        },
        {
            {"Superposición", "Local", "Mundo", "Chams", "Máscaras", "Otros",},
            {
                {"Amistoso", "Enemigo", "Arma",},
                {
                    {"Cuadro", "Dibujar cuadro 2D alrededor de la entidad", {"Desactivado", "Esbozado", "Normal",},},
                    {"Precisión de cuadro", "Hacer coincidir el cuadro 2D con los límites del modelo",},
                    {"Nombre", "Dibujar nombre de entidad",},
                    {"Esqueleto", "Dibujar esqueleto de jugador",},
                    {"Resplandor", "Efecto de resplandor en el jugador", {"Desactivado", "Color del equipo", "Color de salud",},},
                    {"Salud", "Configurar opciones de salud", [4] = {"Barra", "Número",},},
                    {"Armadura", "Configurar opciones de armadura", [4] = {"Barra", "Número",},},
                    {"Arma", "Dibujar el nombre del arma del jugador", {"Desactivado", "Activo", "Todos", "Activo + Nades",},},
                    {"Banderas", "Mostrar actividad del jugador", [4] = {"Desactivar", "Plantar", "Alcance", "Recargar", "Destellar", "Tiene desactivador", "Tiene C4",},},
                    {"Dinero", "Sacar la cantidad de dinero que tiene el jugador",},
                    {"Barril", "Dibuja líneas donde los jugadores miran",},
                },
                {
                    {"Cuadro", "Dibujar cuadro 2D alrededor de la entidad", {"Desactivado", "Esbozado", "Normal",},},
                    {"Precisión de cuadro", "Hacer coincidir el cuadro 2D con los límites del modelo",},
                    {"Nombre", "Dibujar nombre de entidad",},
                    {"Esqueleto", "Dibujar esqueleto de jugador",},
                    {"Resplandor", "Efecto de resplandor en el jugador", {"Desactivado", "Color del equipo", "Color de salud",},},
                    {"Salud", "Configurar opciones de salud", [4] = {"Barra", "Número",},},
                    {"Armadura", "Configurar opciones de armadura", [4] = {"Barra", "Número",},},
                    {"Arma", "Dibujar el nombre del arma del jugador", {"Desactivado", "Activo", "Todos", "Activo + Nades",},},
                    {"Banderas", "Mostrar actividad del jugador", [4] = {"Desactivar", "Plantar", "Alcance", "Recargar", "Destellar", "Tiene desactivador", "Tiene C4",},},
                    {"Dinero", "Sacar la cantidad de dinero que tiene el jugador",},
                    {"Barril", "Dibuja líneas donde los jugadores miran",},
                },
                {
                    {"Cuadro", "Dibujar cuadro 2D alrededor de la entidad", {"Desactivado", "Esbozado", "Normal",},},
                    {"Precisión de cuadro", "Hacer coincidir el cuadro 2D con los límites del modelo",},
                    {"Nombre", "Dibujar nombre de entidad",},
                    {"Munición", "Cantidad de munición que queda en el arma",},
                    {"C4 Timer", "Tiempo de visualización hasta la explosión C4",},
                    {"Elementos de la zona de peligro", "Varios elementos de la zona de peligro",},
                    {"Torreta de la zona de peligro", "Torreta de la zona de peligro",},
                },
            },
            {
                {"Cámara", "Ayudante",},
                {
                    {"Alternar en tercera persona", "Alternar la vista en tercera persona con esta tecla",},
                    {"Distancia en tercera persona", "Distancia de la cámara",},
                    {"Smooth Ghost Model", "Empareja la posición falsa del fantasma con la real",},
                },
                {
                    {"Daño de Wallbang", "Mostrar espacio penetrable en las paredes",},
                    {"Fuera de la vista", "Mostrar indicadores de enemigos fuera de la vista",},
                },
            },
            {
                {"Extra", "Materiales", "Nade",},
                {
                    {"Hitmarkers", "Reproduce un sonido al golpear a un enemigo",},
                    {"Sonidos", "Mostrar sonidos audibles en la pantalla",},
                },
                {
                    {"Color de las paredes",},
                    {"Color de accesorios estáticos",},
                    {"Skybox", "Cambiar la apariencia del cielo",},
                },
                {
                    {"Inferno", "Draw molotov covered inerno", [4] = {"Local", "Amistoso", "Enemigo",},},
                    {"Grenade Tracer", "Visualiza la trayectoria prevista de la granada", [4] = {"Local", "Amistoso", "Enemigo",},},
                },
            },
            {
                {"Amistoso", "Enemigo", "Local", "Fantasma", "Retroceso", "Arma",},
                {
                    {"Ocluso", "Material ocluido por paredes", {"Apagado", "Plano", "Color", "Metalizado", "Resplandor",},},
                    {"Visible", "Material visible", {"Desactivado", "Plano", "Color", "Metalizado", "Resplandor", "Con textura", "Invisible",},},
                    {"Superposición", "Aplicar sobre materiales anteriores", {"Desactivado", "Estructura metálica",},},
                },
                {
                    {"Ocluso", "Material ocluido por paredes", {"Apagado", "Plano", "Color", "Metalizado", "Resplandor",},},
                    {"Visible", "Material visible", {"Desactivado", "Plano", "Color", "Metalizado", "Resplandor", "Con textura", "Invisible",},},
                    {"Superposición", "Aplicar sobre materiales anteriores", {"Desactivado", "Estructura metálica",},},
                },
                {
                    {"Ocluso", "Material ocluido por paredes", {"Apagado", "Plano", "Color", "Metalizado", "Resplandor",},},
                    {"Visible", "Material visible", {"Desactivado", "Plano", "Color", "Metalizado", "Resplandor", "Con textura", "Invisible",},},
                    {"Superposición", "Aplicar sobre materiales anteriores", {"Desactivado", "Estructura metálica",},},
                },
                {
                    {"Ocluso", "Material ocluido por paredes", {"Apagado", "Plano", "Color", "Metalizado", "Resplandor",},},
                    {"Visible", "Material visible", {"Desactivado", "Plano", "Color", "Metalizado", "Resplandor", "Con textura", "Invisible",},},
                    {"Superposición", "Aplicar sobre materiales anteriores", {"Desactivado", "Estructura metálica",},},
                },
                {
                    {"Ocluso", "Material ocluido por paredes", {"Apagado", "Plano", "Color", "Metalizado", "Resplandor",},},
                    {"Visible", "Material visible", {"Desactivado", "Plano", "Color", "Metalizado", "Resplandor", "Con textura", "Invisible",},},
                    {"Superposición", "Aplicar sobre materiales anteriores", {"Desactivado", "Estructura metálica",},},
                },
                {
                    {"Ocluso", "Material ocluido por paredes", {"Apagado", "Plano", "Color", "Metalizado", "Resplandor",},},
                    {"Visible", "Material visible", {"Desactivado", "Plano", "Color", "Metalizado", "Resplandor", "Con textura", "Invisible",},},
                    {"Superposición", "Aplicar sobre materiales anteriores", {"Desactivado", "Estructura metálica",},},
                },
            },
            {
                {"Cambiar elementos visuales",},
                {
                    {"Objeto", "Seleccionar arma o modelo",},
                    {"Kits de pintura", "Seleccionar máscara de modelo",},
                    {"Desgaste", "Calidad de la textura del artículo",},
                    {"Semilla", "Semilla de generación de textura",},
                    {"StatTrak", "Matar contador de arma",},
                    {"Nombre", "Nombre personalizado del elemento",},
                    {"Añadir",},
                    {"Eliminar",},
                },
            },
            {
                {"Extra", "Rendimiento", "Efectos",},
                {
                    {"Radar", "Mostrar radar personalizado",},
                    {"Rango de radar", "Establecer rango de radar",},
                    {"Punto de mira", "Mostrar punto de mira personalizado",},
                    {"Crosshair Recoil", "Dibuja el lugar donde irán tus disparos", {"Off", "Line", "Fade",},},
                    {"Anti-OBS", "Ocultar imágenes del grabador de pantalla",},
                    {"Anti-Screenshot", "Ocultar imágenes de capturas de pantalla",},
                    {"Preserve Killfeed", "Preserve the killfeed",},
                },
                {
                    {"No renderizar para compañeros de equipo",},
                    {"No hacer para enemigos",},
                    {"No se procesan armas",},
                    {"No hacer render para muñecas de trapo",},
                    {"Desactivar modelos lejanos",},
                },
                {
                    {"No flash",},
                    {"No fumar",},
                    {"Sin retroceso",},
                    {"No alcance",},
                    {"Sin superposición de alcance",},
                    {"No hay cielo",},
                    {"Sin niebla",},
                    {"Sin procesamiento posterior",},
                },
            },
        },
        {
            {"General", "Movimiento", "Mejora",},
            {
                {"Extra", "Logs", "Restrictions", "Bypass", "Server",},
                {
                    {"Mostrar espectadores", "Ver quién te está mirando",},
                    {"Mostrar rangos", "Mostrar rangos de jugadores",},
                    {"Aceptar coincidencia automática", "Aceptar coincidencia automáticamente",},
                },
                {
                    {"Registro de daños", "Registro de daños infligidos a los enemigos",},
                    {"Registrar compras", "Registrar compras realizadas por el equipo enemigo",},
                    {"Log Console", "Log Console messages on screen",},
                },
                {
                    {"Anti-No confiable", "Restringir varias funciones en servidores Valve",},
                },
                {
                    {"Bypass sv_pure", "Permitir modelos y materiales personalizados del directorio csgo",},
                    {"Omitir sv_cheats", "Omitir convars protegidos",},
                    {"Desbloquear logros de Steam",},
                    {"Mostrar ConVars ocultos",},
                },
                {
                    {"sv_maxunlag", "Configurar el factor de retroceso máximo del lado del servidor",},
                    {"sv_maxusrcmdprocessticks", "Configurar el factor de retraso máximo del lado del servidor",},
                },
            },
            {
                {"Saltar", "Otro", "Strafe",},
                {
                    {"Auto Jump", "Seleccione el modo de salto automático para bunnyhopping", {"Off", "Perfect", "Legit",},},
                    {"Edge Jump", "Jump justo antes de caer de un borde",},
                    {"Duck Jump", "Alcanza más alto agachándote mientras saltas",},
                    {"Auto Jump-Bug", "Sin daños por caída al aterrizar desde cierta altura",},
                },
                {
                    {"Fast Duck", "Explota el código de movimiento para agacharte más rápido",},
                    {"Slide Walk", "Animación de Glitch para aparecer deslizándose"},
                },
                {
                    {"Activar", "Activar autostrafer para ganar más velocidad",},
                    {"Air Strafe", "Aumenta la velocidad de avance mientras saltas",},
                    {"Modo de ataque", "Seleccionar estilo de autostrafing", {"Silencioso", "Normal", "Lateral", "Solo W", "Ratón",},},
                    {"Circle Strafe", "Strafe en círculos al presionar una tecla",},
                    {"Snake Strafe", "Strafe como una serpiente al presionar una tecla",},
                    {"Retrack Speed", "Autostrafe en la dirección de las teclas presionadas",},
                    {"Movimiento WASD", "Autostrafe en dirección de las teclas presionadas",},
                },
            },
            {
                {"Fakelag", "Fakelatency", "Apariencia",},
                {
                    {"Activar", "Activar efecto de retraso",},
                    {"On Key", "Activar retraso solo cuando se mantiene presionada esta tecla",},
                    {"Type", 'Type o "patern" of lag.', {"Normal", "Adaptive", "Random", "Switch",},},
                    {"Factor", "Cuántos comandos serán bloqueados",},
                    {"Activar el modo Peek", "Retrasar su modelo detrás de la pared al mirar",},
                    {"Condiciones", "Configurar opciones de fakelag", [4] = {"Mientras está de pie", "Mientras está en el aire", "Mientras está en tierra",},},
                },
                {
                    {"Activar", "Activar modificador de latencia",},
                    {"On Key", "Incremente la latencia solo cuando mantenga presionada esta tecla",},
                    {"Cantidad", "Latencia absoluta para lograr",},
                },
                {
                    {"Robar nombre", "Robar el nombre de otro jugador, limitado a 5 veces",},
                    {"Nombre invisible", "Haz invisible tu nombre",},
                    {"Chat Spam", "Anunciar AIMWARE en el chat",},
                    {"Cambiador de clantag", "Coloca AIMWARE como tu clantag",},
                },
            },
        },
        {
            {"Configuraciones", "Lua Scripts", "Avanzado",},
            {
                {"Administrar configuraciones",},
                {
                    {"Nombre", "Crear o renombrar configuración",},
                    {"Crear",},
                    {"Rebautizar",},
                    {"Carga",},
                    {"Salvar",},
                    {"Reiniciar",},
                    {"Eliminar",},
                    {"Exportar al portapapeles",},
                    {"Importar desde el portapapeles",},
                    {"Establecer por defecto",},
                    {"Actualizar lista",},
                },
            },
            {
                {"Administrar scripts",},
                {
                    {"Nombre", "Crear o renombrar configuración",},
                    {"Crear",},
                    {"Rebautizar",},
                    {"Editar (BETA)",},
                    {"Carga",},
                    {"Descargar",},
                    {"Restablecer estado de Lua",},
                    {"Eliminar",},
                    {"Establecer como ejecución automática",},
                    {"Actualizar lista",},
                },
            },
            {
                {"Administrar configuración avanzada",},
                {
                    {"Abrir tecla de menú", "Enlazar para alternar menú principal",},
                    {"Abrir clave de consola", "Consola para más personalización",},
                    {"Escala Dpi", "Escala el tamaño de la interfaz de usuario en esta cantidad",},
                    {"Abrir carpeta de configuración",},
                    {"Idioma del menú",},
                },
            },
        },
    },
    ["Français"] = {
        {"Legitbot", "Ragebot", "Visuels", "Divers", "Paramètres",},
        {
            {"Aimbot", "Triggerbot", "Armes", "Autre", "Semirage",},
            {
                {"Activation", "Armes", "Selection Des Hitboxes",},
                {
                    {"Activer", "Active l'aimbot discret.",},
                    {"Touche Aimbot", "Mettre l'aimbot sur une touche.",},
                    {"Touche d'Activation", "Mettre la touche d'activation pour activer/désactiver l'aimbot.",},
                },
                {
                    {"Tire Auto", "Tire sans presser de touches.",},
                    {"Tirer Quand Pressé", "Tire quand la touche d'aimbot est pressée.",},
                    {"Pistolet Automatique Intervalle", "Intervalle entre les tirs pour le mode automatique.",},
                },
                {
                    {[2] = "Ordre des hitboxes que l'aimbot va choisir."},
                    {[5] = true, "Multipleur Avancé d'Hitbox", "À quelle vitesse l'aimbot doit changer à la prochaine hitbox.",},
                    {[5] = true, "Le Plus Près Du Viseur", "Priorise les hitboxes prochent du viseur en premier",},
                },
            },
            {
                {"Activation", "Armes", "Scan Des Hitbox",},
                {
                    {"Activer", "Active le trigger.",},
                    {"Touche du Trigger", "Active le trigger quand la touche est préssée.",},
                    {"Auto Fire", "Laisse le trigger tirer sans presser de touches.",},
                },
                {
                    {[5] = true, "Delay Du Trigger", "Delay le tire après le verrouillage du trigger.",},
                    {[5] = true, "Rafale du Trigger", "Continue de tirer après le verouillage du trigger.",},
                    {[5] = true, "Chance De Toucher", "Chance minimum de toucher avant que le trigger tire.",},
                    {[5] = true, "Anti-Recul", "Prends en compte le recul quand le trigger scan.",},
                },
                {
                    {[2] = "Trigger sur les hitboxes sélectionnées.",},
                },
            },
            {
                {"Precision", "Cible", "Visé", "Visibilité",},
                {
                    {[5] = true, "Systeme de Controle du Recul", "Contre le recul des armes en douceur",},
                    {[5] = true, "Controle du Recul Autonome", "Active le RCS en visé libre.",},
                    {[5] = true, "Horizontal Recoil", "Combien de recul horizontal doit être contré.",},
                    {[5] = true, "Vertical Recoil", "Combien de recul vertical doit être contré.",},
                },
                {
                    {[5] = true, "Porté Minimum du FOV", "Champ de vision minimum for l'aimbot.",},
                    {[5] = true, "Porté Maximum du FOV", "Champ de vision maximum for l'aimbot.",},
                    {[5] = true, "Delay Changement Cible", "Temps que l'aimbot doit attendre avant de changer de cible.",},
                    {[5] = true, "Delay Premier Tire", "Temps avant que l'aimbot tire.",},
                },
                {
                    {[5] = true, "Facteur de Lissage", "Lisse les mouvement de l'aimbot.",},
                    {[5] = true, "Méthod de Lissage", "Méthode à utiliser pour lisser les mouvements.", {"Dynamique", "Statique",},},
                    {[5] = true, "Facteur de Randomisation", "Randomiser la position position cible de l'aimbot.",},
                    {[5] = true, "Facteur de Courbe", "À quel point le mouvement sera non linéaire.",},
                },
                {
                    {[5] = true, "Mur Automatique", "Tire à travers des murs pénétrables.",},
                    {[5] = true, "Travers Fumée", "Tire à travers la fumée.",},
                },

            },
            {
                {"Mouvement", "Extra",},
                {
                    {"Personnalisation de la Vitesse de Marche", "Active les modifications de la vitesse de marche.",},
                    {"Vitesse de Marche", "Modifiez la vitesse de marche avec cette montant.",},
                    {"Arrêt rapide", "Vous fait arrêter plus vite en contre-strafant.",},
                },
                {
                    {"Temps de Backtrack", "Combien de postes dans le passé sont autorisés.",},
                    {"Triggerbot au Couteau", "Active triggerbot au couteau.",},
                },
            },
            {
                {"Aimbot", "Ajustement de la Position", "Anti-Aim",},
                {
                    {"Aimbot Silent", "Vise automatiquement quand dans une petite portée du FOV.",},
                    {"Arrêt Automatique", "S'arrêter lorsque l'aimbot se déclenche pour réduire l'imprécision.",},
                },
                {
                    {"Backtracking", "Vise les positions passées de l'ennemi",},
                    {"Resolver", "Améliore la précision contre les anti-aim enemies.",},
                },
                {
                    {"Type", "Effets Visibles sur l'Animation Maximale.", {"Désactiver", "Minimum", "Maximum",},},
                    {"Direction", "Choisir le mode de sélection de la direction.", {"Auto", "Manuel",},},
                    {"Côté Gauche",},
                    {"Côté Droit",},
                    {"Quand l'Ennemi Vise", "Active l'anti-aim uniquement quand un enemie vous vise.",},
                    {"Désactiver Avec Couteau", "Désactive l'anti-aim en tenant un couteau.",},
                    {"Désactiver Avec Grenade", "Désactive l'anti-aim en tenant une grenade.",},
                },
            },
        },
        {
            {"Aimbot", "Precision", "Hitscan", "Anti-Aim",},
            {
                {"Activation", "Automatisation", "Cible", "Extra",},
                {
                    {"Activer", "Active le rage aimbot.",},
                    {"Touche d'Aimbot", "Mettre l'aimbot sur une touche.",},
                    {"Touche d'Activation", "Mettre la touche d'activation pour activer/désactiver l'aimbot.",},
                },
                {
                    {"Pistolet Automatique", "Fait tirer les pistolé comme une arme automatique.",},
                    {"Revolver Automatique", "Arme automatiquement le revolver pour tirer plus vite.",},
                    {"Visé Automatique", "Vise avec les snipers automatiquement en tirant.", {"Désactiver", "Activer - Auto Unzoom", "Activer - Pas d'Unzoom",},}, 
                },
                {
                    {"FOV", "Champ de vision maximal que l'aimbot ciblera.",},
                    {"Verrouillage de l'Aimbot", "Augmenter la priorité de la dernière cible.",},
                    {"Aimbot Silent", "Supprimer le mouvement de la vue en aimbotant.",},
                },
                {
                    {"Couteau Automatique", "Plante automatiquement lorsque votre cible est à portée.", {"Désactiver", "Couteau Automatique par Défaut", "Seulement Poignardager", "Planter Rapidement",},},
                },
            },
            {
                {"Armes", "Ajustement de la Position", "Mouvement",},
                {
                    {[5] = true, "Chance de Toucher", "Chance minimum de toucher avant que l'aimbot ne tir.",},
                    {[5] = true, "Min Dégats", "Dégâts minimum requis après la pénétration dans le mur.",},
                    {[5] = true, "Anti-Recul", "Contre le recul des armes pour une plus grande précision.",},
                },
                {
                    {"Backtracking", "Viser les positions passées de l'ennemie.",},
                    {"Resolver", "Améliorez la précision contre les anti-aims ennemies.",},
                },
                {
                    {"Arrêt Automatique", "Contre-strafe en tirant pour baisser l'imprécision.",},
                    {"Accroupissement Automatique", "Accroupissement automatique en tirant pour réduire l'inexactitude.",},
                    {"Touche de Marche Lente", "Ralenti les mouvements en maintenant cette touche.",},
                    {"Vitesse de Marche Lente", "Réduit la vitesse de déplacement proportionnellement à cette valeur.",},
                    {"Arrêt Rapide", "Vous fait vous arrêter plus vite en contre-strafant."}
                },
            },
            {
                {"Points par Hitbox", "Hitbox Priorité", "Mode", "Avancé",},
                {
                    {[2] = "Nombre de points scanné par l'aimbot.",},
                },
                {
                    {[2] = "Ordre de points que le Aimbot va aller en premier.",},
                },
                {
                    {[5] = true, "Mur Automatique", "Tire à travers des murs pénétrables.",},
                    {[5] = true, "Tire Delayé", "Attende que les hitboxes soient plus précises.",},
                    {[5] = true, "Létal Bodyaim", "Tire dans le corps si le tir est létal.",},
                },
                {
                    {"Temps de Traitement Maximum", "Réduisez cette valeur pour maintenir un meilleur taux d'IPS.",},
                },
            },
            {
                {"Direction de Base", "Direction Gauche", "Direction Droite", "Condition", "Avancé",},
                {
                    {[6] = true, "Vitesse de la Rotation",},
                    {[6] = true,"Décalage de la Rotation",},
                    {[6] = true,"Décalage du LBY",},
                },
                {
                    {[6] = true, "Vitesse de la Rotation",},
                    {[6] = true,"Décalage de la Rotation",},
                    {[6] = true,"Décalage du LBY",},
                },
                {
                    {[6] = true, "Vitesse de la Rotation",},
                    {[6] = true,"Décalage de la Rotation",},
                    {[6] = true,"Décalage du LBY",},
                },
                {
                    {"Désactiver en Utilisation", "Désactive l'anti-aim quand la touche utiliser est préssée.",},
                    {"Désactiver Avec Couteau", "Désactive l'anti-aim en tenant un couteau.",},
                    {"Désactiver Avec Couteau", "Désactive l'anti-aim en tenant une grenade.",},
                    {"En Tirant", "Empêche d'être touché lors d'un tir.", {"Défaut", "Desync", "Décalage",},},
                },
                {
                    {"Direction Automatique", "Active la direction gauche/droite en fonction des murs proches.",},
                    {"Anti-Alignement", "Empêcher l'alignement de l'anti-aim desync.",},
                    {"Anti-Resolver", "Rend les tirs continus plus difficiles à toucher.",},
                    {"Pitch Angle", "", {"Désactiver", "89°", "180° (Non-fiable)",},},
                    {"Fake Duck", "Vous permet de tirer plus haut en vous accroupissant.",},
                },
            },          
        },
        {
            {"Overlay", "Local", "Monde", "Chams", "Skins", "Autre",},
            {
                {"Ami", "Enemie", "Arme",},
                {
                    {"Boîte", "Affiche une boîte 2D autour de l'entité.", {"Désactiver", "Contourée", "Normal",},},
                    {"Boîte Precise", "Fait correspondre la boîte 2D avec les limites du modèle.",},
                    {"Nom", "Affiche le nom de l'entité.",},
                    {"Squelette", "Affiche le squelette du joueur.",},
                    {"Lueur", "Effet de lueur autour du joueur.", {"Désactiver", "Couleur de l'équipe", "Couleur de la Santé",},},
                    {"Santé", "Configure les options de santé.", [4] = {"Bar", "Nombre",},},
                    {"Armure", "Configure les options d'armure.", [4] = {"Bar", "Nombre",},},
                    {"Arme", "Affiche le nom de l'arme du joueur.", {"Désactiver", "Arme Active", "Tout", "Arme Active + Grenades",},},
                    {"Flags", "Affiche l'activité des joueurs", [4] = {"Désamorçage", "Amorçage", "Zoomé", "Rechargement", "Flashé", "À un Kit de Désamorçage", "À le C4",},},
                    {"Argent", "Affiche le montant d'argent que le joueur a.",},
                    {"Barrel", "Affiche des lignes où les joueurs regardent.",},
                },
                {
                    {"Boîte", "Affiche une boîte 2D autour de l'entité.", {"Désactiver", "Contourée", "Normal",},},
                    {"Boîte Precise", "Fait correspondre la boîte 2D avec les limites du modèle.",},
                    {"Nom", "Affiche le nom de l'entité.",},
                    {"Squelette", "Affiche le squelette du joueur.",},
                    {"Lueur", "Effet de lueur autour du joueur.", {"Désactiver", "Couleur de l'équipe", "Couleur de la Santé",},},
                    {"Santé", "Configure les options de santé.", [4] = {"Bar", "Nombre",},},
                    {"Armure", "Configure les options d'armure.", [4] = {"Bar", "Nombre",},},
                    {"Arme", "Affiche le nom de l'arme du joueur.", {"Désactiver", "Arme Active", "Tout", "Arme Active + Grenades",},},
                    {"Flags", "Affiche l'activité des joueurs", [4] = {"Désamorçage", "Amorçage", "Zoomé", "Rechargement", "Flashé", "À un Kit de Désamorçage", "À le C4",},},
                    {"Argent", "Affiche le montant d'argent que le joueur a.",},
                    {"Barrel", "Affiche des lignes où les joueurs regardent.",},
                },
                {
                    {"Boîte", "Affiche une boîte 2D autour de l'entité.", {"Désactiver", "Contourée", "Normal",},},
                    {"Boîte Precise", "Fait correspondre la boîte 2D avec les limites du modèle.",},
                    {"Nom", "Affiche le nom de l'entité.",},
                    {"Munition", "Quantité de munitions dans l'arme.",},
                    {"Minuterie du C4.", "Afficher le temps jusqu'à l'explosion de C4.",},
                    {"Items Danger Zone", "Divers items de la danger zone.",},
                    {"Tourelle Danger Zone", "Tourelle de la danger zone.",},
                    
                },
            },
            {
                {"Camera", "Assistance",},
                {
                    {"Basculer à la Troisième Personne", "Basculez la vue à la troisième personne avec cette touche.",},
                    {"Distance à la Troisième Personne", "Distance de la caméra.",},
                    {"Lissage du Faux Modèle", "Harmonise la position du faux modèle avec celle du vrai.",},
                },
                {
                    {"Dommages des Tires dans Murs", "Affiche l'espace pénétrable sur les murs.",},
                    {"Hors de Vue", "Indique les ennemis hors de vue.",},  
                },
            },
            {
                {"Extra", "Matériaux", "Grenade",},
                {
                    {"Hitmarkers", "Joue un son lorsque vous toucher un ennemi.",},
                    {"Son", "Affiche un son audible à l'écran.",},
                },
                {
                    {"Couleur des Murs",},
                    {"Couleur des Objets Statiques",},
                    {"Skybox", "Changez l'apparence du ciel.",},
                },
                {
                    {"Feu", "Affiche la zone recouvert de feu par les molotov.", [4] = {"Local", "Ami", "Enemie",},},
                    {"Grenade Tracer", "Visualise la trajectoire prévue des grenades.", [4] = {"Local", "Ami", "Enemie",},},
                },
            },
            {
                {"Ami", "Enemie", "Local", "Faux Modèle", "Backtrack", "Arme",},
                {
                    {"Occlus", "Matériau quand occlus par les murs.", {"Désactiver", "Plat", "Couleur", "Metalique", "Lueur",},},
                    {"Visible", "Matériau quand visible.", {"Désactiver", "Plat", "Couleur", "Metalique", "Lueur", "Texturé", "Invisible",},},
                    {"Overlay", "S'applique au dessus des matériaux précédents.", {"Désactiver", "Wireframe",},},
                },
                {
                    {"Occlus", "Matériau quand occlus par les murs.", {"Désactiver", "Plat", "Couleur", "Metalique", "Lueur",},},
                    {"Visible", "Matériau quand visible.", {"Désactiver", "Plat", "Couleur", "Metalique", "Lueur", "Texturé", "Invisible",},},
                    {"Overlay", "S'applique au dessus des matériaux précédents.", {"Désactiver", "Wireframe",},},
                },
                {
                    {"Occlus", "Matériau quand occlus par les murs.", {"Désactiver", "Plat", "Couleur", "Metalique", "Lueur",},},
                    {"Visible", "Matériau quand visible.", {"Désactiver", "Plat", "Couleur", "Metalique", "Lueur", "Texturé", "Invisible",},},
                    {"Overlay", "S'applique au dessus des matériaux précédents.", {"Désactiver", "Wireframe",},},
                },
                {
                    {"Occlus", "Matériau quand occlus par les murs.", {"Désactiver", "Plat", "Couleur", "Metalique", "Lueur",},},
                    {"Visible", "Matériau quand visible.", {"Désactiver", "Plat", "Couleur", "Metalique", "Lueur", "Texturé", "Invisible",},},
                    {"Overlay", "S'applique au dessus des matériaux précédents.", {"Désactiver", "Wireframe",},},
                },
                {
                    {"Occlus", "Matériau quand occlus par les murs.", {"Désactiver", "Plat", "Couleur", "Metalique", "Lueur",},},
                    {"Visible", "Matériau quand visible.", {"Désactiver", "Plat", "Couleur", "Metalique", "Lueur", "Texturé", "Invisible",},},
                    {"Overlay", "S'applique au dessus des matériaux précédents.", {"Désactiver", "Wireframe",},},
                },
                {
                    {"Occlus", "Matériau quand occlus par les murs.", {"Désactiver", "Plat", "Couleur", "Metalique", "Lueur",},},
                    {"Visible", "Matériau quand visible.", {"Désactiver", "Plat", "Couleur", "Metalique", "Lueur", "Texturé", "Invisible",},},
                    {"Overlay", "S'applique au dessus des matériaux précédents.", {"Désactiver", "Wireframe",},},
                },
            },
            {
                {"Modifier les Éléments Visuels",},
                {
                    {"Item", "Sélectionner une arme ou un modèle.",},
                    {"Kits de Peinture", "Sélectionne le skin du modèle",},
                    {"Usure", "Qualité de la texture de l'item.",},
                    {"Graine", "Graine de génération de texture.",},
                    {"StatTrak", "Compteur de Victime d'armes.",},
                    {"Nom", "Nom personnalisé de l'item.",},
                    {"Ajouter",},
                    {"Retirer",},
                },
            },
            {
                {"Extra", "Performance", "Effets",},
                {
                    {"Radar", "Affiche un radar personnalisé.",},
                    {"Portée du Radar", "Définie la portée du radar.",},
                    {"Viseur", "Affiche un viseur personnalisé.",},
                    {"Viseur Recul", "Affiche l'endroit où vos tirs iront.", {"Désactiver", "Ligne", "Dégradé",},},
                    {"Anti-OBS", "Masque les visuels pour l'enregistreur d'écran.",},
                    {"Anti-Captures d'Écran", "Masque les visuels des captures d'écran.",},
                    {"Préserve la Killfeed", "Préserve la killfeed.",},
                },
                {
                    {"Ne Pas Rendre les Coéquipiers",},
                    {"Ne Pas Rendre les Enemies",},
                    {"Ne Pas Rendre les Armes",},
                    {"Ne Pas Rendre les Cadavres",},
                    {"Désactive les Modèles Éloignés",},
                },
                {
                    {"Pas de Flash",},
                    {"Pas de Fumée",},
                    {"Pas de Recul",},
                    {"Pas de Lunette",},
                    {"Pas d'Overlay de Lunette",},
                    {"Pas de Ciel",},
                    {"Pas de Brouillard",},
                    {"Pas de Post Processing",},
                },
            },
        },
        {
            {"Général", "Mouvement", "Amélioration",},
            {
                {"Extra", "Registre", "Restrictions", "Contournement", "Serveur",},
                {
                    {"Afficher les Spectateurs", "Voyez qui vous regarde.",},
                    {"Afficher les Rangs", "Affiche les rangs des joueurs.",},
                    {"Accepter Automatiquement les Matchs", "Accepter automatiquement les matchs.",},
                },
                {
                    {"Registrer les Dégats", "Registre les dégâts infligés aux ennemis.",},
                    {"Registrer les Achats", "Registre les achats effectués par l'équipe ennemie.",},
                    {"Registrer la Console", "Registre les messages de la console à l'écran.",},
                },
                {
                    {"Anti-Non-Fiable", "Restreindre diverses fonctionnalités sur les serveurs de Valve.",},
                },
                {
                    {"Contourner sv_pure", "Autorise les modèles et matériaux personnalisés à partir du dossier csgo.",},
                    {"Contourner sv_cheats", "Contourne les convars protégés.",},
                    {"Débloquer les succès Steam",},
                    {"Afficher les ConVars masquée",},
                },
                {
                    {"sv_maxunlag", "Configure le facteur de backtracking maximum côté serveur.",},
                    {"sv_maxusrcmdprocessticks", "Configure le facteur de lag max côté serveur.",},
                },
            },
            {
                {"Saut", "Autre", "Strafe",},
                {
                    {"Saut Automatique", "Sélectionnez le mode de saut automatique pour bunnyhopping.", {"Désactiver", "Parfait", "Discret",},},
                    {"Saut au Bord", "Saute juste avant de tomber d'un bord.",},
                    {"Saut Accroupi", "Atteidre plus haut en vous accroupissant en sautant.",},
                    {"Jump-Bug Automatique", "Aucun dégat de chute lors de l'atterrissage d'une certaine hauteur.",},
                },
                {
                    {"Accroupissement Rapide", "Exploite le code des mouvements pour vous accroupir plus rapidement.",},
                    {"Marche Glissante", "Glitch l'animation pour apparaître en train de glissé."},
                },
                {
                    {"Activer", "Activez le strafe automatique pour gagner en vitesse.",},
                    {"Strafe dans les Airs", "Augmente la vitesse d'avancement en sautant.",},
                    {"Mode de Strafe", "Sélectionne le style de strafe automatique.", {"Silent", "Normal", "De Côté", "W-Uniquement", "Souris",},},
                    {"Strafe en Cercle", "Strafe en cercles lorsque vous appuyez sur une touche.",},
                    {"Strafe en Serpent", "Strafe comme un serpent en appuyant sur une touche.",},
                    {"Vitesse de Retrack", "Autostrafe dans le sens des touches enfoncées.",},
                    {"WASD-Mouvement", "Autostrafe dans le sens des touches enfoncées.",},
                },
            },
            {
                {"Faux Lag", "Fausse Latence", "Apparence",},
                {
                    {"Activer", "Active l'effet de lag.",},
                    {"Sur Touche", "Active le lag uniquement lorsque cette touche est maintenue.",},
                    {"Type", 'Type ou "paterne" de lag.', {"Normal", "Adaptatif", "Aléatoire", "Commutateur",},},
                    {"Facteur", "Combien de commandes seront bloquées.",},
                    {"Activer le Mode Peek", "Lag votre modèle derrière le mur lorsque vous peeker.",},
                    {"Conditions", "Configurez les options du fakelag.", [4] = {"En Étant Debout", "En Vol", "Au Sol",},},
                },
                {
                    {"Activer", "Active le modificateur de latence.",},
                    {"Sur Touche", "Augmentez la latence uniquement lorsque cette touche est maintenue.",},
                    {"Montant", "Latence absolue à atteindre.",},
                },
                {
                    {"Voler le Nom", "Vole le nom d'un autre joueur, limité à 5 fois.",},
                    {"Nom Invisible", "Rende votre nom invisible.",},
                    {"Spam du Chat", "Annonce AIMWARE dans le chat.",},
                    {"Changeur de Clantag", "Mettre AIMWARE en tant que clantag.",},
                },
            },
        },
        {
            {"Configurations", "Lua Scripts", "Avancé",},
            {
                {"Gérer les configurations",},
                {
                    {"Nom", "Créez ou renommez la configuration.",},
                    {"Créer",},
                    {"Renommer",},
                    {"Charger",},
                    {"Sauvegarder",},
                    {"Réinitialiser",},
                    {"Effacer",},
                    {"Exporter vers le presse-papiers",},
                    {"Importer vers le presse-papiers",},
                    {"Définir par défaut",},
                    {"Rafraîchir la liste",},
                },
            },
            {
                {"Gérer les scripts",},
                {
                    {"Nom", "Créez ou renommez le Script.",},
                    {"Créer",},
                    {"Renommer",},
                    {"Editer (BETA)",},
                    {"Charger",},
                    {"Décharger",},
                    {"Réinitialiser l'état des scripts",},
                    {"Effacer",},
                    {"Définir comme exécution automatique",},
                    {"Rafraîchir la liste",},
                },
            },
            {
                {"Gérer les Paramètres Avancés",},
                {
                    {"Touche d'Ouverture du Menu", "Touche pour basculer l'affichage du menu principal.",},
                    {"Touche d'Ouverture de la Console", "Console pour plus de personnalisation.",},
                    {"Échelle Dpi", "Mettre à l'échelle la taille de l'interface par ce montant.",},
                    {"Ouvrir le Dossier des Paramètres",},
                    {"Langue du Menu",},
                },
            },
        },
    },
    ["Suomi"] = {
        {"Legitbotti", "Ragebotti", "Visuaalit", "Muut", "Asetukset",},
        {
            {"Aimbotti", "Triggerbotti", "Ase", "Muu", "Semiragebotti",},
            {
                {"Aktivoi", "Ase", "Hitbox valikko",},
                {
                    {"Aktivoi", "Aktivoi legitbotin",},
                    {"Aim nappi", "Aseta aimbotti nappiin",},
                    {"Toggle nappi", "Aseta nappi että voit vaihtaa pelissä onko legitbot päällä vai ei",},
                },
                {
                    {"Automaattiset ammukset", "Ampuu ilman napin painallusta",},
                    {"Ammu painaessa", "Ampuu kun aimbotin näppäintä painetaan",},
                    {"Automaattinen pistooli intervaali", "Intervaali ammusten välissä automaattiseen tilaan.",},
                },
                {
                    {[2] = "Mihin järjestykseen legitbot laittaa hitboxit"},
                    {[5] = true, "Hitboxien järjestys", "Kuinka nopeasti legitbotti vaihtaa hitboxeja",},
                    {[5] = true, "Lähin crosshairiin", "Priorisoi crosshairin lähimpään hitboxiin",},
                },
            },
            {
                {"Aktivoi", "Ase", "Hitboxin skannaus",},
                {
                    {"Aktivoi", "Aktivoi triggerbotti",},
                    {"Trigger nappi", "Aseta triggerbotti nappiin",},
                    {"Automaattinen ammus", "Anna triggerbotin ampua ilman napin painallusta",},
                },
                {
                    {[5] = true, "Triggerin viivästys", "Trigger viivästää kunnes ampuu seuraavan kerran",},
                    {[5] = true, "Triggerin burst", "Jatkaa ampumista trigger lockin jälkeen",},
                    {[5] = true, "Osumis mahollisuus", "Pienin mahdollisuus osua kunnes triggerbot ampuu",},
                    {[5] = true, "Rekyylin vastus", "Ottaa rekyylin huomioon kun triggerbot ampuu",},
                },
                {
                    {[2] = "Triggeraa vain tiettyihin hitboxeihin",},
                },
            },
            {
                {"Tarkkuus", "Kohde", "Aimaa", "Näkyvyys",},
                {
                    {[5] = true, "Rekyylin kontrolli systeemi", "Sujuvasti rekyyliä vastaan",},
                    {[5] = true, "Erillinen rekyyli kontrolli", "Aktivoi RKS kun ammutaan vapaasti",},
                    {[5] = true, "Horisontaali rekyyli", "Kuinka paljon horisontaalista rekyyliä vastaan",},
                    {[5] = true, "Vertikaalinen rekyyli", "Kuinka paljon vertikaalista rekyyliä vastaan",},
                },
                {
                    {[5] = true, "Pienin FOV etäisyys", "Pienin alueen näkyvyys että aim lockki osottaa kohdetta",},
                    {[5] = true, "Maksimi FOV etäisyys", "Maksimi alueen näkyvyys että aim lockki osottaa kohdetta",},
                    {[5] = true, "Kohteen vaihto viivästys", "Kuinka kauan aimbotti odottaa kunnes vaihtaa kohteen",},
                    {[5] = true, "Ensimmäisen ammuksen viivästys", "Kuinka kauan aimbot odottaa ennenkuin aimbotti ampuu ammuksen",},
                },
                {
                    {[5] = true, "Sujuvuus taso", "Kuinka sujuvasti aimbotti lukottaa kohteeseen",},
                    {[5] = true, "Sujuvuus metodi", "Metodi jota käytetään sujuvuuteen", {"Dynaaminen", "Staattinen",},},
                    {[5] = true, "Satunnaista taso", "Satunnaista aimbotin kohteen sijainti",},
                    {[5] = true, "Kurvauden taso", "Kuinka epälineaarinen liikkuvuus on",},
                },
                {
                    {[5] = true, "Automaattinen seinä", "Ampuu seinien läpi joiden läpi pystyy ampumaan",},
                    {[5] = true, "Smoken läpi", "Ampuu smoken läpi",},
                },

            },
            {
                {"Liikkuvuus", "Ekstra",},
                {
                    {"Kävely nopeuden kustomisaatio", "Aktivoi kävelynopeuden modifiaaktiot",},
                    {"Kävely nopeus", "Modifoi kävely nopeutta",},
                    {"Nopea pysäytys", "Pysäyttää sinut vasta-streiffaamalla",},
                },
                {
                    {"Backtrackin aika", "Kuinka monta sijaintia backtrackistä voi ampua",},
                    {"Puukon triggerbotti", "Aktivoi puukon triggerbotti",},
                },
            },
            {
                {"Aimbotti", "Sijainnin säätö", "Anti-Aimi",},
                {
                    {"Hiljainen aimbotti", "Automaattisesti aimaa kohteita vastaan kun on pieni fov etäisyys",},
                    {"Automaattinen lopetus", "Lopeta kun aimbot ampuu että ei ole liian epätarkka",},
                },
                {
                    {"Backtrackki", "Aimaa kohteen backtrackkiin",},
                    {"Resolver", "Parantaa tarkkuutta kun ampuu kohteen antiaimiin",},
                },
                {
                    {"Tyyppi", "Maksimi antiaimin näkyvyys määrä", {"Pois", "Pienin", "Maksimi",},},
                    {"Suunta", "Valitse moodi valitaksesi suunnan", {"Automaattinen", "Manuaali",},},
                    {"Vasen puoli",},
                    {"Oikea puoli",},
                    {"Kun kohde aimaa", "Aktivoi anti-aimi kun kohde osottaa sinua",},
                    {"De-aktivoi kun on puukko", "De-aktivoi kun puukko on kädessä",},
                    {"De-aktivoi kun on granaatti", "De-aktivoi kun on granaatti kädessä",},
                },
            },
        },
        {
            {"Aimbotti", "Tarkkuus", "Osumaskanni", "Anti-Aimi",},
            {
                {"Aktivoi", "Automatisoi", "Kohde", "Ekstra",},
                {
                    {"Aktivoi", "Aktivoi rage aimbotin",},
                    {"Aim nappi", "Aseta aimbot näppäimeen",},
                    {"Toggle nappi", "Aseta nappi että voit vaihtaa pelissä onko rage aimbot päällä vai ei",},
                },
                {
                    {"Automaattinen pistooli", "Tekee kun pistoolilla ammutaan se ampuu automaattisessa tilassa",},
                    {"Auto Revolveri", "Automaattisesti painaa laukaisu nappia",},
                    {"Auto tähtäin", "Tähtää aseella automaattisesti", {"Pois", "Päällä - Automaattisesti tähtää pois", "Päällä - Ei tähtää automaattisesti pois",},}, 
                },
                {
                    {"FOV", "Maksimi näkyvyys kunnes ampuu kohteen",},
                    {"Aim Lukko", "Suurentaa viime kohteen tärkeyttä",},
                    {"Hiljainen aimi", "Poista liikkuvuuden näkyvyys kun aimbottaa",},
                },
                {
                    {"Puukkobotti", "Automaattisesti puukota kun kohde on tarpeeksi lähellä", {"Pois", "Perus puukkobotti", "Vain selkään", "Nopea viilto",},},
                },
            },
            {
                {"Ase", "Sijainnin säätö", "Liikkuvuus",},
                {
                    {[5] = true, "Osuma mahdollisuus", "Pienin mahdollisuus jota pitää osua että aimbotti ampuu",},
                    {[5] = true, "Pienin damage", "Pienin damage jota tarvitsee tehdä kun on ampunut seinän läpi",},
                    {[5] = true, "Rekyylin vastus", "Vastaa rekyyliin vähentämällä rekyylin vahvuutta",},
                },
                {
                    {"Backtrackki", "Kuinka monta sijaintia backtrackistä voi ampua",},
                    {"Resolver", "Parantaa tarkkuutta kun ampuu kohteen antiaimiin",},
                },
                {
                    {"Automaattinen pysähdys", "Streiffaa vastaan kun ampuu epätarkkuuden vähentämiseksi",},
                    {"Automaattinen kyykky", "Kyykkää automaattisesti kun ampuu epätarkkuuden vähentämiseksi",},
                    {"Hidas kävely nappi", "Hidastaa pelaajan liikkuvuutta kun nappia painetaan",},
                    {"Hitaan kävelyn vauhti", "Pysäyttää nopeammin vastaan streiffaamalla",},
                    {"Pikapysähdys", "Saa teidät lopettamaan nopeammin vastahihnaamalla.",},
                },
            },
            {
                {"Hitboxin kohdat", "Hitboxien tärkeys", "Moodi", "Kehittyneempi",},
                {
                    {[2] = "Määrä kohdista johon aimbot menee",},
                },
                {
                    {[2] = "Määrä missä järjestyksessä kohtia ammutaan",},
                },
                {
                    {[5] = true, "Automaattinen seinä", "Ampuu seinien läpi joiden läpi pystyy ampumaan",},
                    {[5] = true, "Ammuksen viivästys", "Odota tarkempia hitboxeja",},
                    {[5] = true, "Tappava kehoaimi", "Kehoaimaa jos damage on tappava",},
                },
                {
                    {"Maksimi prosessointi aika", "Pienennä tätä parempaan fpssään",},
                },
            },
            {
                {"Pää suunta", "Vasen suunta", "Oikea suunta", "Edellytys", "Kehittyneempi",},
                {
                    {[6] = true, "Spinbotin nopeus",},
                    {[6] = true,"Kierto kompensaatio",},
                    {[6] = true,"LBY kompensaatio",},
                },
                {
                    {[6] = true,"Spinbotin nopeus",},
                    {[6] = true,"Kierto kompensaatio",},
                    {[6] = true,"LBY kompensaatio",},
                },
                {
                    {[6] = true,"Spinbotin nopeus",},
                    {[6] = true,"Kierto kompensaatio",},
                    {[6] = true,"LBY kompensaatio",},
                },
                {
                    {"De-aktivoi kun käyttö", "De-aktivoi antiaimi kun käyttö näppäintä painetaan",},
                    {"De-aktivoi kun puukko", "De-aktivoi antiaimi kun puukko on kädessä",},
                    {"De-aktivoi kun granaatti", "De-aktivoi antiaimi kun granaatti on kädessä",},
                    {"Ammuksessa", "Estä sinun modelia ammuksilta", {"Perus", "Epäsynkronoi", "Vaihda",},},
                },
                {
                    {"Automaattinen suunta", "Aktivoi oikea/vasen suunta kun on seinä lähellä",},
                    {"Vastaan kohdistamista", "Estä kohdistamista epäsynkronoidussa antiaimissa",}, 
                    {"Vastaan resolveria", "Tekee sitä että kokoajan tulevat ammukset eivät saata osua",}, 
                    {"Taso kulma", "", {"Pois", "89°", "180° (Epäluotettu)",},},
                    {"Väärennetty kyykky", "Antaa sinun ampua ylemmäs kun väärennät kyykyn",},
                },
            },          
        },
        {
            {"Päällys", "Lokaalinen", "Maailma", "Chams", "Skinit", "Muut",},
            {
                {"Ystävät", "Viholliset", "Ase",},
                {
                    {"Laatikko", "Piirtää 2D laatikon kohteen päälle", {"Pois", "Ääriviiva", "Normaali",},},
                    {"Laatikon tarkkuus", "Sovi 2D laatikko modelin rajalle",},
                    {"Nimi", "Piirtää pelaajan nimen",},
                    {"Luuranko", "Piirtää luurangon pelaajaan",},
                    {"Hehku", "Hehku efekti pelaajassa", {"Pois", "Tiimi väri", "Terveyden väri",},},
                    {"Terveys", "Konfiguroi terveyden asetuksia", [4] = {"Viiva", "Numero",},},
                    {"Suojat", "Konfiguroi suojien asetuksia", [4] = {"Viiva", "Numero",},},
                    {"Ase", "Piirrä pelaajan aseen nimi", {"Pois", "Aktiivinen", "Kaikki", "Aktiivinen + Granaatit",},},
                    {"Liput", "Pelaajan aktiviteetti", [4] = {"Purkaa", "Plänttää", "Skouppaa", "Lataa asetta", "Fläshättynä", "Onko purkupakkaus", "Onko C4",},},
                    {"Raha", "Piirrä pelaajan rahamäärä",},
                    {"Barreli", "Piirrä viivoja mihin pelaaja katsoo",},
                },
                {
                    {"Laatikko", "Piirtää 2D laatikon kohteen päälle", {"Pois", "Ääriviiva", "Normaali",},},
                    {"Laatikon tarkkuus", "Sovi 2D laatikko modelin rajalle",},
                    {"Nimi", "Piirtää pelaajan nimen",},
                    {"Luuranko", "Piirtää luurangon pelaajaan",},
                    {"Hehku", "Hehku efekti pelaajassa", {"Pois", "Tiimi väri", "Terveyden väri",},},
                    {"Terveys", "Konfiguroi terveyden asetuksia", [4] = {"Viiva", "Numero",},},
                    {"Suojat", "Konfiguroi suojien asetuksia", [4] = {"Viiva", "Numero",},},
                    {"Ase", "Piirrä pelaajan aseen nimi", {"Pois", "Aktiivinen", "Kaikki", "Aktiivinen + Granaatit",},},
                    {"Liput", "Pelaajan aktiviteetti", [4] = {"Purkaa", "Plänttää", "Tähtääkö", "Lataa asetta", "Fläshättynä", "Onko purkupakkaus", "Onko C4",},},
                    {"Raha", "Piirrä pelaajan rahamäärä",},
                    {"Barreli", "Piirrä viivoja mihin pelaaja katsoo",},
                },
                {
                    {"Laatikko", "Piirtää 2D laatikon kohteen päälle", {"Pois", "Ääriviiva", "Normaali",},},
                    {"Box Precision", "Match 2D box with model bounds.",},
                    {"Nimi", "Piirtää pelaajan nimen",},
                    {"Ammukset", "Ammuksien määrä jota on jäljellä aseessa",},
                    {"C4 Ajastin", "Näytä aika kunnes C4 räjähtää",},
                    {"Danger Zone Esineet", "Eri esineitä danger zonesta",},
                    {"Danger Zone Torni", "Torni danger zonesta",},
                },
            },
            {
                {"Kamera", "Avustin",},
                {
                    {"Kolmannen persoonan toggle", "Aktivoi kolmas persoona tällä napilla",},
                    {"Kolmannen persoonan etäisyys", "Etäisyys kamerasta",},
                    {"Sujuva haamu modeli", "Sovi väärennetty haamu modeli oikeaan",},
                },
                {
                    {"Seinänläpi damage", "Näytä damage jota seinän läpi voi tehdä",},
                    {"Pois näöstä", "Näyttää viholliset jotka on pois näöstä",},  
                },
            },
            {
                {"Ekstra", "Materiaalit", "Granaatit",},
                {
                    {"Osumajälki", "Soittaa äänen kun osuma osuu viholliseen",},
                    {"Äänet", "Näyttää soitettavat äänet näytöllä",},
                },
                {
                    {"Seinien väri",},
                    {"Stattisten objektien väri",},
                    {"Ilman laatikko", "Vaihda miltä ilma näyttää",},
                },
                {
                    {"Inferno", "Piirtää siltä miten molotov vaikuttaa maassa", [4] = {"Lokaalinen", "Kaveri", "Vihollinen",},},
                    {"Granaatin jäljitin", "Visuaalisoi miten se menee kun heität granaatin", [4] = {"Lokaalinen", "Kaveri", "Vihollinen",},},
                },
            },
            {
                {"Kaveri", "Vihollinen", "Lokaalinen", "Haamu", "Backtrack", "Ase",},
                {
                    {"Ei näkyvyydessä", "Mikä materiaali kun kohde on seinän takana", {"Pois", "Tasainen", "Väri", "Metallinen", "Hehku",},},
                    {"Näkyvyydessä", "Näkyvä materiaali", {"Pois", "Tasainen", "Väri", "Metallinen", "Hehku", "Teksturoitu", "Näkymätön",},},
                    {"Päällys", "Mene aikaisten materiaalien päälle", {"Pois", "Rautalankamalli",},},
                },
                {
                    {"Ei näkyvyydessä", "Mikä materiaali kun kohde on seinän takana", {"Pois", "Tasainen", "Väri", "Metallinen", "Hehku",},},
                    {"Näkyvyydessä", "Näkyvä materiaali", {"Pois", "Tasainen", "Väri", "Metallinen", "Hehku", "Teksturoitu", "Näkymätön",},},
                    {"Päällys", "Mene aikaisten materiaalien päälle", {"Pois", "Rautalankamalli",},},
                },
                {
                    {"Ei näkyvyydessä", "Mikä materiaali kun kohde on seinän takana", {"Pois", "Tasainen", "Väri", "Metallinen", "Hehku",},},
                    {"Näkyvyydessä", "Näkyvä materiaali", {"Pois", "Tasainen", "Väri", "Metallinen", "Hehku", "Teksturoitu", "Näkymätön",},},
                    {"Päällys", "Mene aikaisten materiaalien päälle", {"Pois", "Rautalankamalli",},},
                },
                {
                    {"Ei näkyvyydessä", "Mikä materiaali kun kohde on seinän takana", {"Pois", "Tasainen", "Väri", "Metallinen", "Hehku",},},
                    {"Näkyvyydessä", "Näkyvä materiaali", {"Pois", "Tasainen", "Väri", "Metallinen", "Hehku", "Teksturoitu", "Näkymätön",},},
                    {"Päällys", "Mene aikaisten materiaalien päälle", {"Pois", "Rautalankamalli",},},
                },
                {
                    {"Ei näkyvyydessä", "Mikä materiaali kun kohde on seinän takana", {"Pois", "Tasainen", "Väri", "Metallinen", "Hehku",},},
                    {"Näkyvyydessä", "Näkyvä materiaali", {"Pois", "Tasainen", "Väri", "Metallinen", "Hehku", "Teksturoitu", "Näkymätön",},},
                    {"Päällys", "Mene aikaisten materiaalien päälle", {"Pois", "Rautalankamalli",},},
                },
                {
                    {"Ei näkyvyydessä", "Mikä materiaali kun kohde on seinän takana", {"Pois", "Tasainen", "Väri", "Metallinen", "Hehku",},},
                    {"Näkyvyydessä", "Näkyvä materiaali", {"Pois", "Tasainen", "Väri", "Metallinen", "Hehku", "Teksturoitu", "Näkymätön",},},
                    {"Päällys", "Mene aikaisten materiaalien päälle", {"Pois", "Rautalankamalli",},},
                },
            },
            {
                {"Vaihda visuaalisia esineitä",},
                {
                    {"Esine", "Valtise ase tai modeli",},
                    {"Maali pakkaus", "Valitse modelin skini",},
                    {"Kulunuus", "Kuinka kulunut esine on",},
                    {"Esiaste", "Tekstuurin esiaste",},
                    {"StatTrak", "Laskee aseen tappomäärän",},
                    {"Nimi", "Kustoomi aseen nimi",},
                    {"Lisää",},
                    {"Poista",},
                },
            },
            {
                {"Ekstra", "Suorituskyky", "Efektit",},
                {
                    {"Tutka", "Näytä kustomi tutka",},
                    {"Tutkan näkyvyys", "Aseta tutkan näkyvyys",},
                    {"Crosshair", "Näytä kustomi crosshairi",},
                    {"Crosshair rekyyli", "Piirtää kohdan mihin ammukset menevät", {"Pois", "Viiva", "Feidi",},},
                    {"Vastaan OBSia", "Piilottaa visuaalit näyttökuvaajalta",},
                    {"Vastaan näyttökuvaa", "Piilottaa visuaalit näyttökuvalta",},
                    {"Säilytä tapponäky", "Säilyttää miten joku tapettiin",},
                },
                {
                    {"Älä renderaa kavereita tai tiimiläisiä",},
                    {"Älä renderaa vihollisia",},
                    {"Älä renderaa aseita",},
                    {"Älä renderaa räsynukkeja",},
                    {"De-aktivoi kaukaiset modelit",},
                },
                {
                    {"Ei fläsyä",},
                    {"Ei smokea",},
                    {"Ei rekyyliä",},
                    {"Ei tähtäystä",},
                    {"Ei tähtäyspeittoa",},
                    {"Ei ilmaa",},
                    {"Ei sumua",},
                    {"Ei jälkikäsittelyä",},
                },
            },
        },
        {
            {"Generaalinen", "Liikkuvuus", "Parannus",},
            {
                {"Ekstra", "Logit", "Rajoitukset", "Ohittaa", "Palvelin",},
                {
                    {"Näytä katsojat", "Näytä ketkä katsovat sinua",},
                    {"Näytä ränkit", "Näytä pelaajien ränkit",},
                    {"Automaattinen matsin hyväksyminen", "Hyväksyy matsin automaattisesti",},
                },
                {
                    {"Logaa damage", "Logaa kuinka paljon damagea teit viholliseen",},
                    {"Logaa ostokset", "Logaa mitä viholliset ostavat",},
                    {"Logaa konsoli", "Logaa konsoli viestit näytöllä",},
                },
                {
                    {"Vastaan epäluotettavaa", "Rajoittaa jotkut jutut valven palvelimilla",},
                },
                {
                    {"Ohita sv_pure", "Voit käyttää kustomi modeleita valven servereillä jos tämä on päällä",},
                    {"Ohita sv_cheats", "Ohita suojatut convarit",},
                    {"Avaa steam saavutukset",},
                    {"Näytä piilotetut convarit",},
                },
                {
                    {"sv_maxunlag", "Konfiguroi palvelimen-puolisia maksimia backtrack tasoa",},
                    {"sv_maxusrcmdprocessticks", "Konfiguroi palvelimen-puolisia lagaus tasoja",},
                },
            },
            {
                {"Hyppää", "Muut", "Strafet",},
                {
                    {"Automaattinen hyppy", "Valitse automaattinen hyppy moodi bhoppaamiselle", {"Pois", "Täydellinen", "Legitti",},},
                    {"Reuna hyppy", "Hyppää juuri ennenkuin olet tippumassa reunalta",},
                    {"Kyykky hyppy", "Hyppää pidemmälle kyykkäämällä kun hyppää",},
                    {"Automaattinen hyppy-bugi", "Ei tippumis damagea kun tiput tietyltä korkeudelta",},
                },
                {
                    {"Nopea kyykky", "Käytä hyväkseen liikkumis koodia että voit kyykkiä nopeammin",},
                    {"Valumisjuoksu", "Glitchi joka näyttää siltä että valut kun juokset"},
                },
                {
                    {"Aktivoi", "Aktivoi automaattinen streiffaus kun hyppäät",},
                    {"Ilma streiffaus", "Nostaa etenemisnopeutta kun hyppäät",},
                    {"Streiffi moodi", "Valitse autostreiffauden tyyli", {"Hiljainen", "Normaali", "Sivuttain", "W-Vain", "Hiiri",},},
                    {"Ympyrä streiffi", "Streiffaa ympyrässä kun nappia painetaan",},
                    {"Käärme streiffi", "Streiffaa niinkuin käärme kun nappia painetaan",},
                    {"Suunta streiffi", "Automaattisesti streiffaa suuntaan johon nappeja painetaan",},
                    {"WASD-liikkuvuus", "Automaattisesti streiffaa suuntaan johon nappeja painetaan",},
                },
            },
            {
                {"Feikkilagi", "Feikkiviive", "Ulkonäkö",},
                {
                    {"Aktivoi", "Aktivoi lagi effekti",},
                    {"Näppäimellä", "Lagaa vain kun nappia painetaan",},
                    {"Tyyppi", 'Tyyppi tai "kaava" jossa lagaa', {"Normaali", "Adaptiivinen", "Satunnainen", "Vaihto",},},
                    {"Faktori", "Kuinka monta komentoa tukitaan",},
                    {"Aktivoi kurkkaus moodi", "Lagaa modeli seinän takana",},
                    {"Edellytys", "Konfiguroi feikkilagi valintoja", [4] = {"Kun seisoo", "Kun on ilmassa", "Kun on maassa",},},
                },
                {
                    {"Aktivoi", "Aktivoi viive muunnin",},
                    {"Näppäimessä", "Isonna viivettä kun näppäintä painetaan",},
                    {"Määrä", "Viive johon pitää päästä",},
                },
                {
                    {"Varasta nimi", "Varasta toisen pelaajan nimi, rajoitettu viiteen",},
                    {"Näkymätön nimi", "Tee nimestäsi näkymätön",},
                    {"Chätti spämmi", "Mainosta AIMWAREa chätissä",},
                    {"Kläntägin vaihto", "Laita AIMWARE kläntägiksi",},
                },
            },
        },
        {
            {"Konfiguraatiot", "Lua Skriptit", "Kehittyneempi",},
            {
                {"Hallitse konfiguraatioita",},
                {
                    {"Nimi", "Luo tai uudelleen-nimeä konfiguraatioita",},
                    {"Luo",},
                    {"Uudelleen-nimeä",},
                    {"Lataa",},
                    {"Tallenna",},
                    {"Resetoi",},
                    {"Poista",},
                    {"Vie leikepöydälle",},
                    {"Tuo leikepöydältä",},
                    {"Aseta perusteelliseksi",},
                    {"Päivitä lista",},
                },
            },
            {
                {"Hallitse skriptejä",},
                {
                    {"Nimi", "Luo tai uudelleen-nimeä skripti",},
                    {"Luo",},
                    {"Uudelleen-nimeä",},
                    {"Editoi (BETA)",},
                    {"Lataa",},
                    {"Pura",},
                    {"Resetoi luan tila",},
                    {"Poista",},
                    {"Aseta automaattiseen loadaamiseen",},
                    {"Päivitä lista",},
                },
            },
            {
                {"Hallitse kehittyneempiä asetuksia",},
                {
                    {"Avaa menu näppäin", "Kiinnitä main menu toggle näppäimeksi",},
                    {"Avaa konsoli näppäin", "Konsoli enempään kustomisointiin",},
                    {"Dpi asteikko", "Aseta UI isommaksi",},
                    {"Avaa asetusten kansio",},
                    {"Menun kieli",},
                },
            },
        },
    },
    ["Português"] = {
        {"Credível", "Agressivo", "Visuais", "Outros", "Definições",},
        {
            {"Mira", "Disparo Automático", "Arma", "Outros", "Semi-Credível",},
            {
                {"Alternar", "Arma", "Seleção Corporal",},
                {
                    {"Habilitar", "Habilita mira credível.",},
                    {"Tecla De Mira", "Por a mira numa tecla.",},
                    {"Alternar Tecla", "Por a tecla para alternar entre Habilitar/Desabilitar mira.",},
                },
                {
                    {"disparo automático", "Dispara sem pressionar nenhuma tecla.",},
                    {"Disparar Em Pressionar", "Dispara quando pressionar a Tecla de mira.",},
                    {"Intervalo De Pistola Automática", "Intervalo entre tiros para modo automático.",},
                },
                {
                    {[2] = "Ordem de zonas do corpo que a Mira vai escolher.",},
                    {[5] = true, "Multiplicador Do Avanço Para Zonas Do Corpo", "Quão rápido a mira deve mudar para a próxima zona do corpo.",},
                    {[5] = true, "Mais Próximo Da Mira", "Prioridade na zona do corpo mais próxima da mira.",},
                },
            },
            {
                {"Alternar", "Arma", "Seleção da zona do corpo",},
                {
                    {"Habilitar", "Habilita disparo automático.",},
                    {"Tecla De disparo automático", "Ativar disparo automático ao pressionar Tecla.",},
                    {"disparo automático", "Deixar disparo automático trabalhar por si.",},
                },
                {
                    {[5] = true, "Atraso Do disparo automático", "Atrasar tiro após disparo automático fixar.",},
                    {[5] = true, "disparo automático Em Rajada", "Continuar a disparar após disparo automático fixar.",},
                    {[5] = true, "Chance De Acertar", "Mínimo chance para acertar antes do disparo automático disparar.",},
                    {[5] = true, "Anti-Coice", "Account para Coice quando disparo automático scanning.",},
                },
                {
                    {[2] = "disparo automático nas zonas do corpo selecionadas.",},
                },
            },
            {
                {"Precisão", "Alvo", "Mirar", "Visibilidade",},
                {
                    {[5] = true, "Sistema De Controlo De Coice", "Contraria suavemente o coice da arma.",},
                    {[5] = true, "Controlo De Coice Separado", "Habilitar SCC ao fazer mira livremente.",},
                    {[5] = true, "Coice Horizontal", "Quão o coice horizontal vai ser contrariado.",},
                    {[5] = true, "Coice Vertical", "Quão o coice vertical vai ser contrariado.",},
                },
                {
                    {[5] = true, "Mínimo FOV Distância", "Mínimo campo de visão para mira fixar.",},
                    {[5] = true, "Máximo FOV Distância", "Máximo campo de visão para mira fixar.",},
                    {[5] = true, "Atraso Para Mudar De Alvo", "Tempo que a Mira vai esperar antes de mudar de alvo.",},
                    {[5] = true, "Atraso Do Primeiro Tiro", "Tempo até o hack disparar o primeiro tiro.",},
                },
                {
                    {[5] = true, "Fator De Suavização", "Suaviza o movimento da mira.",},
                    {[5] = true, "Método De Suavização", "Método da Suavização de movimento.", {"Dinâmico", "Estático",},},
                    {[5] = true, "Fator De Aleatóriedade", "Aleatóriedade da mira na posição do Alvo.",},
                    {[5] = true, "Fator De curvatura", "Quão não linear será o movimento.",},
                },
                {
                    {[5] = true, "Pela Parede", "Disparar por paredes penetráveis.",},
                    {[5] = true, "Pela Smoke", "Disparar pela smoke.",},
                },

            },
            {
                {"Movimento", "Extra",},
                {
                    {"Costumização Da Velocidade ao Andar", "Habilitar modificações na velocidade ao andar.",},
                    {"Velocidade ao Andar", "Modifica por esta quantidade a velocidade ao andar.",},
                    {"Parar Rápidamente", "Faz com que tu pares mais rápido ao contrariar o movimento.",},
                },
                {
                    {"Tempo de Backtrack", "Quantas posições no passado são permitidas.",},
                    {"Facada Automática.", "Habilita facada automática.",},
                },
            },
            {
                {"Mira", "Ajuste de posição", "Anti-Mira",},
                {
                    {"Mira Dissimulada", "Mirar automaticamente sem ser detectado.",},
                    {"Parar Automaticamente", "Para ao disparar para uma maior precisão.",},
                },
                {
                    {"Backtracking", "Dispara em posições antigas do inimigo",},
                    {"Resolver", "Melhora precisão contra inimigos de modelos falsos.",},
                },
                {
                    {"Tipo", "Quantidade de feitos visíveis.", {"Desligar", "Mínimo", "Máximo",},},
                    {"Direção", "Escolher modo de seleção de direção", {"Auto", "Manual",},},
                    {"Esquerda",},
                    {"Direita",},
                    {"Ao Inimigo Mirar", "Ativar anti-Mira apenas quando o inimigo estiver a Mirar para ti.",},
                    {"Desabilitar em Faca", "Desabilitar anti-Mira quando segurar faca.",},
                    {"Desabilitar em Granada", "Desabilitar anti-Mira quando segurar a granada.",},
                },
            },
        },
        {
            {"Mira", "Precisão", "Processamento", "Anti-Mira",},
            {
                {"Alternar", "Automatização", "Alvo", "Extra",},
                {
                    {"Habilitar", "Habilita mira a agressiva.",},
                    {"Tecla de Mira", "Por a mira em tecla.",},
                    {"Tecla de Alternar", "Por a tecla para alternar entre Habilitar/Desabilitar mira.",},
                },
                {
                    {"Pistola Automática", "Faz a pistola disparar automaticamente.",},
                    {"Revolver Automático", "Engatilha o revolver para disparar mais cedo.",},
                    {"Mirar Automáticamente", "Mira automaticamente com a espingarda.", {"Desligado", "Ligado - Auto tirar mira", "Ligado - Sem tirar mira",},}, 
                },
                {
                    {"FOV", "Máximo campo de visão em que a mira atinge o alvo.",},
                    {"Fixar Mira", "Aumenta a prioridade no último alvo.",},
                    {"Mira Dissimulada", "Remove animações locais da cabeça.",},
                },
                {
                    {"Facada Automática", "Habilita facada automática.", {"Desligado", "Padrão", "Apenas facada nas costas", "Facada rápida",},},
                },
            },
            {
                {"Arma", "Ajuste De Posição", "Movimento",},
                {
                    {[5] = true, "Chance de Acertar", "Mínimo chance para acertar antes mira disparar.",},
                    {[5] = true, "Min Dano", "Mínimo Dano necessário após penetração da parede.",},
                    {[5] = true, "Anti-Coice", "Contrariar o coice da arma para maior precisão.",},
                },
                {
                    {"Backtracking", "Dispara em posições antigas do inimigo.",},
                    {"Resolver", "Melhora precisão contra inimigos com modelos falsos.",},
                },
                {
                    {"Parar Automaticamente", "Para ao disparar para uma maior precisão.",},
                    {"Agachar Automaticamente", "Agachar ao disparar para maior precisão.",},
                    {"Andar Devagar", "Abrandar movimento ao pressionar tecla.",},
                    {"Velocidade ao Andar", "Mudar velocidade de movimento por este valor",},
					{"Parar Rápidamente", "Faz com que pares mais rápido ao contrariar o movimento.",},
                },
            },
            {
                {"Pontos em Zonas do Corpo.", "Prioridade de Zonas do Corpo", "Modo", "Avançado",},
                {
                    {[2] = "Quantidade de pontos que o cheat vai processar.",},
                },
                {
                    {[2] = "Ordem de mira em zonas do corpo.",},
                },
                {
                    {[5] = true, "Pela Parede", "Disparar por paredes penetráveis.",},
                    {[5] = true, "Atraso do Tiro", "Esperar para zonas do corpo mais precisas.",},
                    {[5] = true, "Balas no Corpo", "Dispara no corpo se letal.",},
                },
                {
                    {"Tempo Máximo de Processamento", "Diminuir este valor para manter melhores FPS.",},
                },
            },
            {
                {"Direção: Base", "Direção: Esquerda", "Direção: Direita", "Condições", "Avançado",},
                {
                    {[6] = true, "Velocidade do Spinbot",},
                    {[6] = true,"Modelo Realt",},
                    {[6] = true,"Modelo Falso",},
                },
                {
                    {[6] = true,"Velocidade do Spinbot",},
                    {[6] = true,"Modelo Real",},
                    {[6] = true,"Modelo Falso",},
                },
                {
                    {[6] = true,"Velocidade do Spinbot",},
                    {[6] = true,"Modelo Real",},
                    {[6] = true,"Modelo Falso",},
                },
                {
                    {"Desabilitar em Usar", "Desabilitar anti-mira ao pressionar Tecla.",},
                    {"Desabilitar em Faca", "Desabilitar anti-mira ao segurar faca.",},
                    {"Desabilitar em Granada", "Desabilitar anti-mira ao segurar a granada.",},
                    {"Em Tiro", "Previne que seja seja atingido.", {"Predefinido", "Desync", "Shift",},},
                },
                {
                    {"Auto Direção", "Anti-mira dependendo das paredes.",},
                    {"Anti-Alinhamento", "Impedir alinhamento do anti-Mira.",},
                    {"Anti-Resolver", "Torna tiros contínuos mais difíceis de acertar.",},
                    {"Ângulo de Inclinação", "", {"Desligado", "89°", "180° (Não confiável)",},},
                    {"Agachamento Falso", "Permite que dispares enquanto agachado",},
                },
            },          
        },
        {
            {"Sobreposição", "Local", "Mundo", "Chams", "Skins", "Outros",},
            {
                {"Equipa", "Inimigo", "Arma",},
                {
                    {"Caixa", "Renderizar Caixa 2D no jogador.", {"Desligar", "Delineado", "Normal",},},
                    {"Precisão da Caixa", "Combinar a caixa 2D com o jogador.",},
                    {"Nome", "Mostrar nome do jogador.",},
                    {"Esqueleto", "Renderizar esqueleto do jogador.",},
                    {"Brilho", "Brilho no jagador.", {"Desligar", "Cor de equipa", "Cor de vida",},},
                    {"Vida", "Configurar opções de vida.", [4] = {"Barrara", "Número",},},
                    {"Armadura", "Configurar opções de armadura.", [4] = {"Barrara", "Número",},},
                    {"Arma", "Renderizar armas do jogador.", {"Desligar", "Active", "All", "Active + Granadas",},},
                    {"Avisos", "Mostrar atividade do jogador", [4] = {"Desarmar", "A Armar", "Mirar", "Recarregar", "Flashado", "Tem kit", "Tem C4",},},
                    {"Dinheiro", "Mostra o dinheiro que jogador possui.",},
                    {"Cano", "Renderizar linhas da mira.",},
                },
                {
                    {"Caixa", "Renderizar Caixa 2D no jogador.", {"Desligar", "Delineado", "Normal",},},
                    {"Precisão da caixa", "Combinar a caixa 2D com o jogador.",},
                    {"Nome", "Mostrar nome do jogador.",},
                    {"Esqueleto", "Renderizar esqueleto do jogador.",},
                    {"Brilho", "Brilho no jagador.", {"Desligar", "Cor de equipa", "Cor de vida",},},
                    {"Vida", "Configurar opções de vida.", [4] = {"Barrara", "Número",},},
                    {"armadura", "Configurar opções de armadura.", [4] = {"Barrara", "Número",},},
                    {"Arma", "Renderizar armas do jogador.", {"Desligar", "Active", "All", "Active + Granadas",},},
                    {"Avisos", "Mostrar atividade do jogador", [4] = {"Desarmar", "A Armar", "Mirar", "Recarregar", "Flashado", "Tem kit", "Tem C4",},},
                    {"Dinheiro", "Mostra o dinheiro que jogador possui.",},
                    {"Cano", "Renderizar linhas da mira.",},
                },
                {
                    {"Caixa", "Renderizar Caixa 2D no jogador.", {"Desligar", "Delineado", "Normal",},},
                    {"Precisão da caixa", "Combinar a caixa 2D com o jogador.",},
                    {"Nome", "Mostrar nome do jogador.",},
                    {"Ammo", "Munição restante em arma.",},
                    {"Temporizador C4", "Mostrar tempo até explosão.",},
                    {"Itens da Zona de Perigo", "Vários itens da zona de perigo.",},
                    {"Torreta da Zona de Perigo", "Torre da zona de perigo.",},
                },
            },
            {
                {"Camera", "Ajuda",},
                {
                    {"Alternar Terceira Pessoa", "Alternar visão em terceira pessoa com esta tecla.",},
                    {"Distância da Terceira Pessoa", "Distância da camera.",},
                    {"Suavização do Modelo Falso", "Combina o modelo falso com o real.",},
                },
                {
                    {"Dano pela Parede", "Mostra às paredes penetráveis.",},
                    {"Fora de Vista", "Mostrar indicadores de fora de vista inimigos.",},  
                },
            },
            {
                {"Extra", "Materiais", "Granada",},
                {
                    {"Acertos", "Tocar um som ao acertar num inimigo.",},
                    {"Sounds", "Exibir sons audíveis no ecrã.",},
                },
                {
                    {"Cor das Paredes",},
                    {"cor dos Objetos Estáticos",},
                    {"Céu", "Mude a aparência do céu.",},
                },
                {
                    {"Inferno", "Renderizar delimitação da molotov.", [4] = {"Local", "Equipa", "Inimigo",},},
                    {"Marcador de granadas", "Visualizar a trajetória prevista de granada.", [4] = {"Local", "Equipa", "Inimigo",},},
                },
            },
            {
                {"Equipa", "Inimigo", "Local", "Ghost", "Backtrack", "Arma",},
                {
                    {"Tapado", "Material escondido por paredes.", {"Desligar", "Plano", "Cor", "Metálico", "Brilho",},},
                    {"Material Visível", "Material Visível.", {"Desligar", "Plano", "Cor", "Metálico", "Brilho", "Textured", "Invisível",},},
                    {"Sobreposição", "Aplicar sobre os materiais anteriores.", {"Desligar", "Teia",},},
                },
                {
                    {"Tapado", "Material escondido por paredes.", {"Desligar", "Plano", "Cor", "Metálico", "Brilho",},},
                    {"Material Visível", "Material Visível.", {"Desligar", "Plano", "Cor", "Metálico", "Brilho", "Textured", "Invisível",},},
                    {"Sobreposição", "Aplicar sobre os materiais anteriores.", {"Desligar", "Teia",},},
                },
                {
                    {"Tapado", "Material escondido por paredes.", {"Desligar", "Plano", "Cor", "Metálico", "Brilho",},},
                    {"Material Visível", "Material Visível.", {"Desligar", "Plano", "Cor", "Metálico", "Brilho", "Textured", "Invisível",},},
                    {"Sobreposição", "Aplicar sobre os materiais anteriores.", {"Desligar", "Teia",},},
                },
                {
                    {"Tapado", "Material escondido por paredes.", {"Desligar", "Plano", "Cor", "Metálico", "Brilho",},},
                    {"Material Visível", "Material Visível.", {"Desligar", "Plano", "Cor", "Metálico", "Brilho", "Textured", "Invisível",},},
                    {"Sobreposição", "Aplicar sobre os materiais anteriores.", {"Desligar", "Teia",},},
                },
                {
                    {"Tapado", "Material escondido por paredes.", {"Desligar", "Plano", "Cor", "Metálico", "Brilho",},},
                    {"Material Visível", "Material Visível.", {"Desligar", "Plano", "Cor", "Metálico", "Brilho", "Textured", "Invisível",},},
                    {"Sobreposição", "Aplicar sobre os materiais anteriores.", {"Desligar", "Teia",},},
                },
                {
                    {"Tapado", "Material escondido por paredes.", {"Desligar", "Plano", "Cor", "Metálico", "Brilho",},},
                    {"Material Visível", "Material Visível.", {"Desligar", "Plano", "Cor", "Metálico", "Brilho", "Textured", "Invisível",},},
                    {"Sobreposição", "Aplicar sobre os materiais anteriores.", {"Desligar", "Teia",},},
                },
            },
            {
                {"Alterar Itens Visuais",},
                {
                    {"Item", "Selecione Arma ou modelo.",},
                    {"Kits de Pintura", "Selecionar skin do modelo",},
                    {"Desgaste", "Qualidade da textura do item.",},
                    {"Semente", "Semente de geração da textura.",},
                    {"StatTrak", "Contador de mortes da amra.",},
                    {"Nome", "Nome de item customizado.",},
                    {"Adicionar",},
                    {"Remover",},
                },
            },
            {
                {"Extra", "Performance", "Efeitos",},
                {
                    {"Radar", "Mostrar radar personalizado.",},
                    {"Distância do radar", "Mudar distância do radar.",},
                    {"Mira", "Usar mira do cheat.",},
                    {"Mira do Coice", "Renderiza onde os tiros iram.", {"Desligar", "Linha", "Desvanecer",},},
                    {"Anti-OBS", "Esconde os visuais de gravadores do ecrã.",},
                    {"Anti-Screenshot", "Esconde os visuais de screenshots.",},
                    {"Preservar Killfeed", "Preserva o killfeed.",},
                },
                {
                    {"Não Renderizar Equipa",},
                    {"Não Renderizar Enimigos",},
                    {"Não Renderizar Armas",},
                    {"Não Renderizar Mortos",},
                    {"Desabilitar Modelos Distantes",},
                },
                {
                    {"Sem Flash",},
                    {"Sem Smoke",},
                    {"Sem Coice",},
                    {"Sem Mira",},
                    {"Sem Sobreposição da Mira",},
                    {"Sem Céu",},
                    {"Sem nevoeiro",},
                    {"Sem Post Processing +FPS",},
                },
            },
        },
        {
            {"Geral", "Movimento", "Melhoramentos",},
            {
                {"Extra", "Histórico", "Restrições", "Sobrepor", "Servidor",},
                {
                    {"Mostrar Espectadores", "Ver quem te está a observar.",},
                    {"Mostrar Classificações", "Mostrar classificações de jogadores.",},
                    {"Aceitar Automaticamente Partida", "Aceitar automaticamente partida.",},
                },
                {
                    {"Histórico Do Dano", "Mostra dano dano a inimigos.",},
                    {"Histórico Das Compras", "Mostra compras dos inimigos.",},
                    {"Histórico Da Consola", "Mostra comandos da consola.",},
                },
                {
                    {"Anti-Inconfiável", "Restringir várias opções em servidores da Vavle.",},
                },
                {
                    {"Sobrepor sv_pure", "Permitir modelos e texturas personalizadas no csgo.",},
                    {"Sobrepor sv_cheats", "Sobrepor Convars protegidos.",},
                    {"Desbloquear trofeus da Steam",},
                    {"Mostrar ConVars Protegidos",},
                },
                {
                    {"sv_maxunlag", "Configurar o backtracking máximo pelo servidor.",},
                    {"sv_maxusrcmdprocessticks", "Configurar lag máximo pelo servidor.",},
                },
            },
            {
                {"Saltar", "Outros", "Strafe",},
                {
                    {"Salto Automático", "Selecione o modo salto automático para fazer bunnyhop.", {"Desligar", "Perfeito", "Credível",},},
                    {"Saltar Na Ponta", "Saltar antes de cair.",},
                    {"Saltar Agachado", "Salta mais alto por te agachares.",},
                    {"Salto Automático-Bug", "Não levar dano até uma certa altura.",},
                },
                {
                    {"Agachamento Rápido", "Exploit movimento code para crouch quicker.",},
                    {"Andar a Deslizar", "Animação bugada para aparentar estar a deslizar."},
                },
                {
                    {"Habilitar", "Habilitar autostrafer para ganhar mais Velocidade.",},
                    {"Strafe no Ar", "Aumenta a velocidade ao Saltar.",},
                    {"Modo de Strafe", "Selecionar estilo de autostrafing.", {"Silencioso", "Normal", "Lateralmente", "W-Apenas", "Rato",},},
                    {"Strafe em Círculo", "Strafe em círculo quando pressionar a Tecla.",},
                    {"Strafe em ZigZag", "Strafe em ZigZag snake quando pressionar a Tecla.",},
                    {"Velocidade de Retorno", "Autostrafe na direção da tecla pressionada.",},
                    {"WASD-Movimento", "Autostrafe em direção de tecla pressionada.",},
                },
            },
            {
                {"Lag Falso", "Latência falsa", "Aparência",},
                {
                    {"Habilitar", "Habilitar efeito de lag.",},
                    {"Em Tecla", "Habilitar lag Apenas quando segurar esta tecla.",},
                    {"Tipo", 'Tipo ou "padrão" de lag.', {"Normal", "Adaptativo", "Aleatório", "Mudar",},},
                    {"Fator", "Quantos comandos serão atrasados.",},
                    {"Habilitar Modo de Espreitar", "Atrasa o teu modelo atrás duma parede ao andar.",},
                    {"Condições", "Configurar opções de lag falso.", [4] = {"Enquanto De Pé", "Enquanto Estiver No Ar", "Enquanto No Chão",},},
                },
                {
                    {"Habilitar", "Habilitar modificador de latência.",},
                    {"Em Tecla", "Aumenta a latência spenas quando segurar este Tecla.",},
                    {"Munição", "Latência absoluta a alcançar.",},
                },
                {
                    {"Roubar Nome", "Usa nomes de outros jogadores, até 5 vezes.",},
                    {"Invisível Nome", "Torna o teu nome invisível",},
                    {"Chat Spam", "Anuncia o AIMWARE no chat.",},
                    {"Mudar Clantag", "Coloque AIMWARE na tua clantag.",},
                },
            },
        },
        {
            {"Configurações", "Lua Scripts", "Avançado",},
            {
                {"Gerir Configurações",},
                {
                    {"Nome", "Criar ou renomearar configuração.",},
                    {"Criar",},
                    {"Renomear",},
                    {"Carregar",},
                    {"Guardar",},
                    {"Recomeçar",},
                    {"Apagar",},
                    {"CTRL+C",},
                    {"CTRL+V",},
                    {"Definir Como Padrão",},
                    {"Atualizar Lista",},
                },
            },
            {
                {"Gerir scripts",},
                {
                    {"Nome", "Criar or renomear script.",},
                    {"Criar",},
                    {"Renomear",},
                    {"Editar (BETA)",},
                    {"Carregar",},
                    {"Descarregar",},
                    {"Recomeçar Estado Lua",},
                    {"Apagar",},
                    {"Definir Como Padrão",},
                    {"Atualizar Lista",},
                },
            },
            {
                {"Gerir Definições Avançadas",},
                {
                    {"Tecla Para Abrir O Menu", "Tecla padrão para abrir o menu.",},
                    {"Tecla Para Abrir Consola", "Consola para maior customização.",},
                    {"Escala Dpi", "Escala do Menu.",},
                    {"Abrir Pasta do Cheat",},
                    {"Idioma do Menu",},
                },
            },
        },
    },
    ["Romana"] = {
        {"Legitbot", "Ragebot", "Visuale", "Diverse", "Setari",},
        {
            {"Aimbot", "Triggerbot", "Arma", "Altele", "Semirage",},
            {
                {"Comutare", "Arma", "Selectare Hitbox",},
                {
                    {"Activeaza", "Activeaza aimbotul legit.",},
                    {"Butonul pentru aim", "Seteaza butonul pentru aimbot.",},
                    {"Butonul pentru comutare", "Selecteaza butonul pentru a comuta activat/dezactivat aimbotul.",},
                },
                {
                    {"Foc automat", "Trage fara sa apasati vreun buton.",},
                    {"Foc pe tasta", "Trage cand e apasata tasta de aimbot.",},
                    {"Interval pentru auto pistol", "Intervalul intre focuri pentru modul automat.",},
                },
                {
                    {[2] = "Ordinea hitboxurilor pe care aimbotul le alege."},
                    {[5] = true, "Coeficient avansat pentru hitbox", "Cat de repede aimbotul schimba hitboxul.",},
                    {[5] = true, "Cel mai apropiat de crosshair", "Hitboxul mai apropiat de crosshair are prioritate.",},
                },
            },
            {
                {"Comutare", "Arma", "Scanare hitbox",},
                {
                    {"Activeaza", "Activeaza triggerbotul.",},
                    {"Butonul pentru Triggerbot", "Activeaza triggerbotul doar cand e apasata tasta.",},
                    {"Foc automat", "Triggerbotul trage fara sa tineti vreo tasta apasata.",},
                },
                {
                    {[5] = true, "Intarziere pentru trigger", "Intarzie trasul dupa ce inamicul e detectat.",},
                    {[5] = true, "Contiuna trasul", "Continua trasul dupa primul glont.",},
                    {[5] = true, "Sansa de lovitura", "Sansa de lovitura minima pentru ca triggerbotul sa traga.",},
                    {[5] = true, "Anti-Recoil", "Spray automat practic.",},
                },
                {
                    {[2] = "Trigger pe hitboxurile selectate.",},
                },
            },
            {
                {"Acuratete", "Tinta", "Tintire", "Vizibilitate",},
                {
                    {[5] = true, "Sistem de control recul", "Smoothly counter weapon recoil.",},
                    {[5] = true, "Sistem de recul autonom", "Activeaza controlul mereu.",},
                    {[5] = true, "Recul orizontal", "Cat de mult va fi afectat reculul orizontal.",},
                    {[5] = true, "Recul vertical", "Cat de mult va fi afectat reculul vertical.",},
                },
                {
                    {[5] = true, "Raza FOV minima", "Raza minima pentru aimlock.",},
                    {[5] = true, "Raza FOV maxima", "Raza maxima pentru aimlock.",},
                    {[5] = true, "Intarziere schimbarea tintei", "Timpul pe care aimbotul il asteapta pana schimba tinta.",},
                    {[5] = true, "Intarziere primul foc", "Timp pana cand aimbotul trage primul glont.",},
                },
                {
                    {[5] = true, "Factor normalitate", "Normalizeaza miscarile aimbotului.",},
                    {[5] = true, "Metode normalitate", "Metoda folosita pentru normalizarea aimbotului.", {"Dinamic", "Static",},},
                    {[5] = true, "Factor de aleatoritate", "Tinta aleatorie la aimbot.",},
                    {[5] = true, "Factor de curba", "Cum va fi miscarea non-lineara.",},
                },
                {
                    {[5] = true, "Auto Wall", "Trage automat prin peretii subtiri.",},
                    {[5] = true, "Prin smoke", "Trage prin fum.",},
                },

            },
            {
                {"Miscare", "Extra",},
                {
                    {"Customizarea vitezei de mers", "Activeaza viteza modificata.",},
                    {"Viteza de mers", "Modifica viteza cu aceasta valoare.",},
                    {"Oprire rapida", "Te opresti mai repede facand un strafe in directia opusa.",},
                },
                {
                    {"Timp pentru backtrack", "Cate pozitii trecute sa inregistreze lovitura.",},
                    {"Triggerbot pe cutit.", "Activeaza triggerbot pe cutit.",},
                },
            },
            {
                {"Aimbot", "Ajustarea positiei", "Anti-Aim",},
                {
                    {"Silent Aimbot", "Autoaim in cu FOV-ul mic.",},
                    {"Auto Stop", "Te opresti din mers pentru acuratete mai mare.",},
                },
                {
                    {"Backtracking", "Tinteste la pozitiile vechi.",},
                    {"Resolver", "Creste acuratetea cand tragi dupa cineva cu anti-aim.",},
                },
                {
                    {"Tip", "Maximum afecteaza animatiile vizibile.", {"Off", "Minimum", "Maximum",},},
                    {"Directie", "Alege modul pentru a selecta directiile", {"Auto", "Manual",},},
                    {"Stanga",},
                    {"Dreapta",},
                    {"Cand tinteste inamicul", "Activeaza anti-aim doar cand un inamic tinteste spre tine.",},
                    {"Dezactiveaza pe cutit", "Dezactiveaza anti-aim cand stai cu cutitul in mana.",},
                    {"Dezactiveaza pe grenada", "Dezactiveaza anti-aim cand stai cu grenada in mana.",},
                },
            },
        },
        {
            {"Aimbot", "Acuratete", "Hitscan", "Anti-Aim",},
            {
                {"Comutare", "Automatizare", "Tinta", "Extra",},
                {
                    {"Activeaza", "Activeaza aimbotul de tip rage.",},
                    {"Butonul de aim", "Seteaza butonul de aimbot.",},
                    {"Butonul pentru comutare", "Selecteaza butonul pentru a comuta activat/dezactivat aimbotul.",},
                },
                {
                    {"Auto Pistol", "Tragi cu pistolul ca si cu o arma automata.",},
                    {"Auto Revolver", "Pregateste revolverul pentru a trage mai repede.",},
                    {"Auto Scope", "Pune tinta automat la sniper.", {"Off", "On - Auto Unzoom", "On - No Unzoom",},}, 
                },
                {
                    {"FOV", "Raza maxima in care aimbotul detecteaza tinte.",},
                    {"Aim Lock", "Creste prioritatea ultimei tinte.",},
                    {"Silent Aim", "Vezi normal cand folosesti ragebotul.",},
                },
                {
                    {"Knifebot", "Loveste automat cu cutitul cand tinta se afla in raza.", {"Off", "Knifebot implicit", "Doar Injunghiere in spate", "Injunghiere rapida",},},
                },
            },
            {
                {"Arma", "Ajustarea pozitiei", "Miscare",},
                {
                    {[5] = true, "Sansa de lovitura", "Sansa minima de lovitura inainte ca aimbotul sa traga.",},
                    {[5] = true, "Damage minim", "Dauna minima necesara dupa perete.",},
                    {[5] = true, "Anti-Recul", "Recul automat pentru a creste acuratetea.",},
                },
                {
                    {"Backtracking", "Tinteste la pozitiile vechi ale inamicului.",},
                    {"Resolver", "Imbunatateste acuratetea cand tintiti la inamicii cu anti-aim.",},
                },
                {
                    {"Oprire automata", "Strafe in directia opusa pentru a creste acuratetea.",},
                    {"Ghemuire automata", "Crouch cand tragi pentru a creste acuratetea.",},
                    {"Tasta pentru mers incet", "Mers incet cand e tasta apasata.",},
                    {"Viteza mers incet", "Te opresti mai repede facand un strafe in directia opusa.",},
                    {"Oprire rapida", "Te opresti mai repede facand un strafe in directia opusa.",},

                },
            },
            {
                {"Puncte Hitbox", "Prioritate Hitbox", "Mod", "Avansat",},
                {
                    {[2] = "Numarul de puncte pe care le cauta aimbotul.",},
                },
                {
                    {[2] = "Ordinea punctelor in care scaneaza aimbotul.",},
                },
                {
                    {[5] = true, "Auto Wall", "Trage prin peretii penetrabili.",},
                    {[5] = true, "Foc intarziat", "Asteapta pentru acuratete mai mare.",},
                    {[5] = true, "Bodyaim letal", "Trage in corp daca e lovitura fatala.",},
                },
                {
                    {"Timp de procesare maxim", "Micsoreaza valoarea aceasta pentru mai multe fps-uri.",},
                },
            },
            {
                {"Directia de baza", "Directia in stanga", "Directia in dreapta", "Conditie", "Avansat",},
                {
                    {[6] = true, "Viteza spinbot",},
                    {[6] = true,"Decalaj de rotatie",},
                    {[6] = true,"Decalaj LBY",},
                },
                {
                    {[6] = true,"Viteza spinbot",},
                    {[6] = true,"Decalaj de rotatie",},
                    {[6] = true,"Decalaj LBY",},
                },
                {
                    {[6] = true,"Viteza spinbot",},
                    {[6] = true,"Decalaj de rotatie",},
                    {[6] = true,"Decalaj LBY",},
                },
                {
                    {"Dezactiveaza pe tasta Use", "Desactiveaza anti-aimul cand apesi tasta pentru Use.",},
                    {"Dezactiveaza pe cutit", "Desactiveaza anti-aimul cand ai in mana cutitul.",},
                    {"Dezactiveaza pe grenada", "Desactiveaza anti-aimul cand ai in mana o grenada.",},
                    {"Pe foc", "Previne modelul tau sa fie lovit cand tragi.", {"Default", "Desync", "Shift",},},
                },
                {
                    {"Directie automata", "Activeaza directia stanga/dreapta bazata pe peretii apropiati.",},
                    {"Anti-Aliniere", "Previne alinierea desync cu real.",},
                    {"Anti-Resolver", "Face focurile continue mai greu de nimerit.",},
                    {"Unghi de inclinare", "", {"Off", "89°", "180° (Untrusted)",},},
                    {"Ghemuire falsa", "Tragi la inaltimi ridicate chiar daca stai in crouch",},
                },
            },          
        },
        {
            {"Suprafata", "Local", "Lume", "Chams", "Skinuri", "Altele",},
            {
                {"Coechipier", "Inamic", "Arma",},
                {
                    {"Cutie", "Deseneaza o cutie 2d in jurul modelului.", {"Off", "Outlined", "Normal",},},
                    {"Precizia cutiei", "Potriveste cutia cu limitele modelului.",},
                    {"Nume", "Numele entitatii.",},
                    {"Schelet", "Deseneaza scheletul jucatorului.",},
                    {"Stralucire", "Glow effect on player.", {"Off", "Culoarea echipei", "Culoarea vietii",},},
                    {"Viata", "Seteaza optiunile pentru viata.", [4] = {"Bara", "Numar",},},
                    {"Armura", "Seteaza optiunile pentru armura.", [4] = {"Bara", "Numar",},},
                    {"Arma", "Numele armei pe care o au jucatorii.", {"Off", "Activ", "Toate", "Activ + Grenazi",},},
                    {"Steaguri", "Arata activitatiile jucatorilor", [4] = {"Dezamorseaza", "Planteaza", "Tinteste", "Incarca", "Orbit", "Are defuse kit", "Are C4",},},
                    {"Bani", "Arata cati bani are jucatorul.",},
                    {"Barrel", "Arata o linie in directia in care se uita inamicul.",},
                },
                {
                    {"Cutie", "Deseneaza o cutie 2d in jurul modelului.", {"Off", "Outlined", "Normal",},},
                    {"Precizia cutiei", "Potriveste cutia cu limitele modelului.",},
                    {"Nume", "Numele entitatii.",},
                    {"Schelet", "Deseneaza scheletul jucatorului.",},
                    {"Stralucire", "Glow effect on player.", {"Off", "Culoarea echipei", "Culoarea vietii",},},
                    {"Viata", "Seteaza optiunile pentru viata.", [4] = {"Bara", "Numar",},},
                    {"Armura", "Seteaza optiunile pentru armura.", [4] = {"Bara", "Numar",},},
                    {"Arma", "Numele armei pe care o au jucatorii.", {"Off", "Activ", "Toate", "Activ + Grenazi",},},
                    {"Steaguri", "Arata activitatiile jucatorilor", [4] = {"Dezamorseaza", "Planteaza", "Tinteste", "Incarca", "Orbit", "Are defuse kit", "Are C4",},},
                    {"Bani", "Arata cati bani are jucatorul.",},
                    {"Barrel", "Arata o linie in directia in care se uita inamicul.",},
                },
                {
                    {"Cutie", "Deseneaza o cutie 2d in jurul modelului.", {"Off", "Outlined", "Normal",},},
                    {"Precizia cutiei", "Potriveste cutia cu limitele modelului.",},
                    {"Nume", "Numele entitatii.",},
                    {"Gloante", "Numarul de gloante ramas in arma.",},
                    {"Timp C4", "Timpul pana explodeaza C4.",},
                    {"Iteme pentru Danger Zone", "Iteme in modul Danger Zone.",},
                    {"Tureta din Danger Zone", "Arata Tureta din Danger Zone.",},
                },
            },
            {
                {"Camera", "Asistent",},
                {
                    {"Comuta persoana a 3-a", "Comuta persoana a 3-a cu butonul acesta.",},
                    {"Distanta persoana a 3-a", "Distanta de la camera.",},
                    {"Model de fantoma smooth", "Potriveste fantoma cu realul.",},
                },
                {
                    {"Daunele prim perete", "Arata spatiile penetrabile prin pereti.",},
                    {"In afara campului vizual", "Arata inamicii care se afla inafara campului vizual.",},  
                },
            },
            {
                {"Extra", "Materiale", "Grenazi",},
                {
                    {"Hitmarker", "Se aude un sunet cand este lovit un inamic.",},
                    {"Sunete", "Arata sunetele care se aud pe ecran.",},
                },
                {
                    {"Culoarea peretiilor",},
                    {"Culoarea prop-urilor statice",},
                    {"Skybox", "Schimba cerul.",},
                },
                {
                    {"Inferno", "Deseneaza raza de efect a focului.", [4] = {"Local", "Coechipier", "Inamic",},},
                    {"Traiectoria grenazii", "Arata traiectoria grenazii.", [4] = {"Local", "Coechipier", "Inamic",},},
                },
            },
            {
                {"Coechipier", "Inamic", "Local", "Fantoma", "Backtrack", "Arma",},
                {
                    {"Ascuns", "Material ascuns de perete.", {"Off", "Flat", "Color", "Metalic", "Glow",},},
                    {"Vizibil", "Material vizibil.", {"Off", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Acoperire", "Aplica peste alte materiale.", {"Off", "Wireframe",},},
                },
                {
                    {"Ascuns", "Material ascuns de perete.", {"Off", "Flat", "Color", "Metalic", "Glow",},},
                    {"Vizibil", "Material vizibil.", {"Off", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Acoperire", "Aplica peste alte materiale.", {"Off", "Wireframe",},},
                },
                {
                    {"Ascuns", "Material ascuns de perete.", {"Off", "Flat", "Color", "Metalic", "Glow",},},
                    {"Vizibil", "Material vizibil.", {"Off", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Acoperire", "Aplica peste alte materiale.", {"Off", "Wireframe",},},
                },
                {
                    {"Ascuns", "Material ascuns de perete.", {"Off", "Flat", "Color", "Metalic", "Glow",},},
                    {"Vizibil", "Material vizibil.", {"Off", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Acoperire", "Aplica peste alte materiale.", {"Off", "Wireframe",},},
                },
                {
                    {"Ascuns", "Material ascuns de perete.", {"Off", "Flat", "Color", "Metalic", "Glow",},},
                    {"Vizibil", "Material vizibil.", {"Off", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Acoperire", "Aplica peste alte materiale.", {"Off", "Wireframe",},},
                },
                {
                    {"Ascuns", "Material ascuns de perete.", {"Off", "Flat", "Color", "Metalic", "Glow",},},
                    {"Vizibil", "Material vizibil.", {"Off", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Acoperire", "Aplica peste alte materiale.", {"Off", "Wireframe",},},
                },
            },
            {
                {"Schimba itemele vizibile",},
                {
                    {"Item", "Alege arma sau modelul.",},
                    {"Kit de vopsea", "Alege skinul modelului",},
                    {"Conditie", "Calitatea itemului texturat.",},
                    {"Seed", "Seed-ul skinului ales.",},
                    {"StatTrak", "Numarator de killuri pe arma.",},
                    {"Nume", "Nume customizat.",},
                    {"Adauga",},
                    {"Sterge",},
                },
            },
            {
                {"Extra", "Performanta", "Efecte",},
                {
                    {"Radar", "Arata radarul customizat.",},
                    {"Raza radarului", "Seteaza raza radarului.",},
                    {"Crosshair", "Arata crosshair-ul customizat.",},
                    {"Crosshair de recul", "Arata un punct unde ajung gloantele tale", {"Off", "Linie", "Sters",},},
                    {"Anti-OBS", "Ascunde efectele vizuale la programele de screen record.",},
                    {"Anti-Screenshot", "Ascunde efectele vizuale din screenshot-uri.",},
                    {"Pastreaza killfeed-ul", "Preserve the killfeed.",},
                },
                {
                    {"Nu randeaza coechipierii",},
                    {"Nu randeaza inamicii",},
                    {"Nu randeaza armele",},
                    {"Nu randeaza Ragdoll-ruile",},
                    {"Dezactiveaza modelele indepartate",},
                },
                {
                    {"Fara Flash",},
                    {"Fara Fum",},
                    {"Fara Recul",},
                    {"Fara Luneta",},
                    {"Fara Acoperirea Lunetei",},
                    {"Fara Cer",},
                    {"Fara Cheata",},
                    {"Fara Post Processing",},
                },
            },
        },
        {
            {"General", "Miscare", "Imbunatatiri",},
            {
                {"Extra", "Inregistrari", "Restrictii", "Bypass", "Server",},
                {
                    {"Arata spectatorii", "Vezi cine te urmareste.",},
                    {"Arata Rankurile", "Arata rankurile jucatorilor.",},
                    {"Auto-Accepta Meciul", "Accepta meciul in mod automat.",},
                },
                {
                    {"Inregistreaza Daunele", "Inregistreaza daunele facute inamicilor.",},
                    {"Inregistreaza Cumparaturile", "Inregistreaza cumparaturile facute de echipa inamica.",},
                    {"Inregistreaza Consola", "Inregistreaza mesajele din consola pe ecran.",},
                },
                {
                    {"Anti-Untrusted", "Restrictioneaza unele optiuni pe serverele protejate de VAC.",},
                },
                {
                    {"Bypass sv_pure", "Permite modele si texturi custom.",},
                    {"Bypass sv_cheats", "Bypass la convar-urile protejate.",},
                    {"Deblocheaza toate realizarile",},
                    {"Arata ConVar-urile ascunse",},
                },
                {
                    {"sv_maxunlag", "Configureaza factorul de backtrack pentru server-side.",},
                    {"sv_maxusrcmdprocessticks", "Configureaza factorul de fakelag pentru server-side.",},
                },
            },
            {
                {"Saritura", "Altele", "Strafe",},
                {
                    {"Saritura automata", "Selecteaza modul de bhop.", {"Off", "Perfect", "Legit",},},
                    {"Saritura la margine", "Sari inainte sa cazi de pe margini.",},
                    {"Saritura cu crouch", "Ghemuire in timp ce sari pentru a ajunge la inaltime mai mare.",},
                    {"Jump Bug automat", "Nu iei daune de la cadere de la anumite inaltimi.",},
                },
                {
                    {"Ghemuire rapida", "Exploateaza codul ghemuirii pentru a te ghemui mai rapid.",},
                    {"Alunecare", "Glitch in animatia de mers sa arata ca si cum ai aluneca."},
                },
                {
                    {"Activeaza", "Activeaza auto-strafe pentru a obtine viteza mai mare in aer.",},
                    {"Air Strafe", "Mareste viteza cand sari.",},
                    {"Mod de strafe", "Alege modul de strafe.", {"Silent", "Normal", "Sideways", "W-Only", "Mouse",},},
                    {"Strafe in cerc", "Strafe in cerc cand apesi o tasta.",},
                    {"Strafe Serpuit", "Faci strafe ca un sarpe cand apesi o tasta.",},
                    {"Viteza Retrack", "Autostrafe in directia butonului apasat.",},
                    {"WASD-Movement", "Autostrafe in directia butonului apasat.",},
                },
            },
            {
                {"Lag fake", "Latenta falsa", "Aparenta",},
                {
                    {"Activeaza", "Activeaza efectul de lag.",},
                    {"Pe buton", "Activeaza lagul doar cand e tasta apasata.",},
                    {"Tip", 'Type or "patern" of lag.', {"Normal", "Adaptiv", "Aleatoriu", "Switch",},},
                    {"Factor", "Cate comenzi sunt innabusite.",},
                    {"Activeazal modul peek", "Modelul ascuns dupa perete cand faci peek.",},
                    {"Conditii", "Configureaza setarile fakelag.", [4] = {"Cand stai", "In aer", "Pe pamant",},},
                },
                {
                    {"Activeaza", "Activeaza modificatorul de latenta.",},
                    {"Pe buton", "Modifica latenta doar cand e un buton apasat.",},
                    {"Valoare", "Latenta absoluta atinsa.",},
                },
                {
                    {"Fura nume", "Fura numele altor jucatori, limita de 5 ori.",},
                    {"Nume invizibil", "Iti face numele invizibil",},
                    {"Spameaza chatul", "Fa reclama la AIMWARE in chat.",},
                    {"Schimba Clantagul", "Foloseste clantagul AIMWARE.",},
                },
            },
        },
        {
            {"Configuratii", "Scripturi LUA", "Avansat",},
            {
                {"Gestioneaza Configuratii",},
                {
                    {"Nume", "Creaza sau numeste o configuratie.",},
                    {"Creaza",},
                    {"Renumeste",},
                    {"Activeaza",},
                    {"Dezactiveaza",},
                    {"Reseteaza",},
                    {"Sterge",},
                    {"Exporteaza in Clipboard",},
                    {"Importa din Clipboard",},
                    {"Seteaza ca Implicit",},
                    {"Actualizare lista",},
                },
            },
            {
                {"Gestioneaza scripturi",},
                {
                    {"Nume", "Creaza sau numeste o configuratie.",},
                    {"Creaza",},
                    {"Renumeste",},
                    {"Editeaza (BETA)",},
                    {"Activeaza",},
                    {"Dezactiveaza",},
                    {"Reset Lua State",},
                    {"Sterge",},
                    {"Seteaza pentru activare automata",},
                    {"Actualizare lista",},
                },
            },
            {
                {"Gestionati setarile avansate",},
                {
                    {"Tasta pentru meniu", "Tasta pentru inchis/deschis meniu.",},
                    {"Tasta pentru consola", "Consola pentru mai multe customizari.",},
                    {"Scara Dpi", "Scaleaza Dpi cu aceasta valoare.",},
                    {"Deschide folderul cu setari",},
                    {"Limba meniu",},
                },
            },
        },
    },
    ["Deutsch"] = {
        {"Legitbot", "Ragebot", "Visuell", "Misc", "Settings",},
        {
            {"Aimbot", "Triggerbot", "Waffe", "Andere", "Semirage",},
            {
                {"Toggle", "Waffe", "Hitbox Auswahl",},
                {
                    {"Aktivieren", "Aktiviert den Legit Aimbot.",},
                    {"Aim Taste", "Setzt die Taste des Legit Aimbots.",},
                    {"Toggle Taste", "Aktiviert/Deaktiviert den Legit Aimbot",},
                },
                {
                    {"Automatisches Feuern", "Schießt ohne eine Taste zu drücken.",},
                    {"Feuern auf Tastendruck", "Schießt nur wenn entsprechende Taste gedrückt ist.",},
                    {"Auto Pistol Interval", "Intervall zwischen Pistolen Schüssen.",},
                },
                {
                    {[2] = "Reihenfolge die der Aimbot für die Hitboxen wählt."},
                    {[5] = true, "Hitbox Wechsel Pause", "Wie schnell der Aimbot auf die nächste Hitbox zielt.",},
                    {[5] = true, "Nah zum Fadenkreuz", "Wählt die Hitbox als erstes die am Fadenkreuz dran ist.",},
                },
            },
            {
                {"Toggle", "Waffe", "Hitbox Scan",},
                {
                    {"Aktivieren", "Aktiviert den Triggerbot.",},
                    {"Trigger Taste", "Triggerbot reagiert nur bei Tastendruck.",},
                    {"Automatisches Feuern", "Triggerbot funktioniert ohne Tastendruck.",},
                },
                {
                    {[5] = true, "Trigger Verzögerung", "Zeit, nachdem der Triggerbot schießt.",},
                    {[5] = true, "Trigger Burst", "Zeit, wie lange nach dem Triggern weitergeschossen wird",},
                    {[5] = true, "Trefferchance", "Wahrscheinlichkeit mit dem Triggerbot zu treffen.",},
                    {[5] = true, "Kein Rückstoß", "Reduziert Recoil beim Benutzen des Triggerbots.",},
                },
                {
                    {[2] = "Trigger auf ausgewählten Hitboxen.",},
                },
            },
            {
                {"Genauigkeit", "Ziel", "Aiming", "Sichtbarkeit",},
                {
                    {[5] = true, "Kein Aimbot Rückstoß", "Vermindert Rückstoß beim Schießen mit dem Aimbot.",},
                    {[5] = true, "Kein Rückstoß", "Reduziert Rückstoß auch ohne Aimbot.",},
                    {[5] = true, "Horizontale Einstellung", "Horizontaler Widerstand beim Schießen.",},
                    {[5] = true, "Vertikale Einstellung", "Vertikaler Widerstand beim Schießen.",},
                },
                {
                    {[5] = true, "Mindest-Aimbot Sichtfeld", "Aimbot visiert mindestens in diesem Umkreis an.",},
                    {[5] = true, "Maximales Aimbot Sichtfeld", "Aimbot visiert maximal in diesem Umkreis an.",},
                    {[5] = true, "Zieländerungs-Verzögerung", "Zeit, bevor der Aimbot einen neuen Gegner anvisiert.",},
                    {[5] = true, "Erste Schuss Verzögerung", "Zeit, wie lange der Aimbot wartet vorm Schießen.",},
                },
                {
                    {[5] = true, "Glättungs Faktor", "Rundet die Bewegung des Aimbots ab.",},
                    {[5] = true, "Glättungs Methode", "Methode zum Abrunden.", {"Dynamisch", "Statisch",},},
                    {[5] = true, "Randomisierungs Faktor", "Randomisiert Anvisieren des Aimbots.",},
                    {[5] = true, "Rundungs Faktor", "Aimbot Bewegung ist kurviger und weniger linear.",},
                },
                {
                    {[5] = true, "Auto Wall", "Visiert durch durchdringbare Wände an.",},
                    {[5] = true, "Durch Smoke", "Visiert durch Smokegranaten an.",},
                },
    
            },
            {
                {"Bewegung", "Extra",},
                {
                    {"Laufgeschwindigkeits Anpassung", "Aktiviert Laufgeschwindigkeits Modifikationen.",},
                    {"Laufgeschwindigkeit", "Ändert automatische Laufgeschwindigkeit.",},
                    {"Schnelles Stoppen", "Schnelleres Stoppen durch das erwidern der Laufrichtung.",},
                },
                {
                    {"Backtrack Zeit", "Zeit, in der vorherige Positionen von Gegnern treffbar sind.",},
                    {"Messer Triggerbot", "Aktiviert den Triggerbot mit dem Messer.",},
                },
            },
            {
                {"Aimbot", "Positionsjustierung", "Anti-Aim",},
                {
                    {"Silent Aimbot", "Automatisches Zielen in geringem Sichtfeld.",},
                    {"Automatisches Stoppen", "Weniger Ungenauigkeit aufgrund des Stoppens der Bewegung.",},
                },
                {
                    {"Backtracking", "Visiert vorherige Positionen der Gegner an.",},
                    {"Resolver", "Verbessert Genauigkeit bei Gegnern mit Anti-Aim.",},
                },
                {
                    {"Stärke", "Maximum ist sichtbar beim Zuschauen.", {"Aus", "Minimum", "Maximum",},},
                    {"Richtung", "Modus zum Wählen der Richtung.", {"Auto", "Manuell",},},
                    {"Linke Seite",},
                    {"Rechte Seite",},
                    {"Wenn Gegner anvisiert", "Aktiviert Anti-Aim wenn der Gegner dich anvisiert.",},
                    {"Deaktivieren auf Messer", "Deaktiviert Anti-Aim auf dem Messer.",},
                    {"Deaktivieren auf Granaten", "Deaktiviert Anti-Aim auf Granaten.",},
                },
            },
        },
        {
            {"Aimbot", "Genauigkeit", "Hitscan", "Anti-Aim",},
            {
                {"Toggle", "Automatisierung", "Ziel", "Extra",},
                {
                    {"Aktivieren", "Aktiviert den Rage Aimbot.",},
                    {"Aimbot Taste", "Setzt die Taste des Rage Aimbots.",},
                    {"Toggle Taste", "Aktiviert/Deaktiviert den Rage Aimbot.",},
                },
                {
                    {"Automatische Pistole", "Pistolen schießen wie Automatikwaffen.",},
                    {"Automatischer Revolver", "Lässt den Revolver schneller schießen.",},
                    {"Automatischer Scope", "Aktiviert automatisch die Zielansicht.", {"Aus", "An - Auto Unzoom", "An - Kein Unzoom",},}, 
                },
                {
                    {"Sichtfeld", "Maximales Sichtfeld, worin der Aimbot anvisiert.",},
                    {"Aim Lock", "Bleibt auf Gegner bis dieser erledigt ist.",},
                    {"Silent Aim", "Kein Sichtbares Zucken auf Ziel.",},
                },
                {
                    {"Knifebot", "Greift Gegner automatisch mit dem Messer an.", {"An", "Normaler Knifebot", "Nur Backstab", "Schnelles Stechen",},},
                },
            },
            {
                {"Waffe", "Positionsjustierung", "Bewegung",},
                {
                    {[5] = true, "Trefferchance", "Mindest-Trefferchance mit dem Aimbot zu treffen.",},
                    {[5] = true, "Mindest-Schaden", "Mindest-Schaden bevor der Aimbot schießt.",},
                    {[5] = true, "Kein Recoil", "Entfernt Recoil aufgrund besserer Genauigkeit.",},
                },
                {
                    {"Backtracking", "Ragebot visiert vorherige Positionen der Gegner an.",},
                    {"Resolver", "Verbessert Genauigkeit bei Gegnern mit Anti-Aim.",},
                },
                {
                    {"Automatisches Stoppen", "Weniger Ungenauigkeit aufgrund des Stoppens der Bewegung.",},
                    {"Automatisches Ducken", "Bei geringer Genauigkeit duckt sich der Spieler automatisch.",},
                    {"Slow Walk Taste", "Verlangsamt Laufbewegung auf Tastendruck.",},
                    {"Slow Walk Geschwindigkeit", "Geschwindigkeit des Slow Walks.",},
                    {"Schnelles Stoppen", "Schnelleres Stoppen durch das erwidern der Laufrichtung.",},
                },
            },
            {
                {"Hitbox Punkte", "Hitbox Priorität", "Modus", "Erweitert",},
                {
                    {[2] = "Anzahl der Punkte die der Aimbot anvisiert.",},
                },
                {
                    {[2] = "Reihenfolge der Punkte die der Aimbot anvisiert.",},
                },
                {
                    {[5] = true, "Auto Wall", "Visiert durch durchdringbare Wände an.",},
                    {[5] = true, "Schuss Verzögerung", "Wartet auf einen genaueren Hitbox Status.",},
                    {[5] = true, "Tödliches Bodyaim", "Visiert den Körper an wenn soweit tödlich.",},
                },
                {
                    {"Maximale Processing Zeit", "Verringere diesen Wert um bessere FPS zu erlangen.",},
                },
            },
            {
                {"Basis Ausrichtung", "Linke Ausrichtung", "Rechte Ausrichtung", "Zustand", "Erweitert",},
                {
                    {[6] = true, "Spinbot Geschwindigkeit",},
                    {[6] = true,"Rotations Offset",},
                    {[6] = true,"LBY Offset",},
                },
                {
                    {[6] = true,"Spinbot Geschwindigkeit",},
                    {[6] = true,"Rotations Offset",},
                    {[6] = true,"LBY Offset",},
                },
                {
                    {[6] = true,"Spinbot Geschwindigkeit",},
                    {[6] = true,"Rotations Offset",},
                    {[6] = true,"LBY Offset",},
                },
                {
                    {"Deaktiviere beim Interagieren", "Deaktiviert Anti-Aim auf der CS:GO Interaktionstaste",},
                    {"Deaktivieren auf Messer", "Deaktiviert Anti-Aim auf dem Messer.",},
                    {"Deaktivieren auf Granaten", "Deaktiviert Anti-Aim auf Granaten.",},
                    {"On Shot", "Verhindert, dass das Onshot Model getroffen wird.", {"Normal", "Desync", "Shift",},},
                },
                {
                    {"Automatisches Ausrichten", "Richtet das Anti-Aim nach vorhandenen Hindernissen aus.",},
                    {"Anti-Alignment", "Verhindert festsetzen des Desync Anti-Aims",},
                    {"Anti-Resolver", "Bei durchgängigem Feuern weniger treffbar.",},
                    {"Pitch Gradzahl", "", {"Aus", "89°", "180° (Bannbar)",},},
                    {"Fake Duck", "Lässt dich während dem Ducken wie beim Stehen schießen.",},
                },
            },          
        },
        {
            {"Übersicht", "Lokal", "Welt", "Chams", "Skins", "Andere",},
            {
                {"Team", "Gegner", "Waffen",},
                {
                    {"Box", "Zeichnet eine 2D Box.", {"Aus", "Outlined", "Normal",},},
                    {"Box Precision", "Zeichnet eine präzisere Box um das Objekt.",},
                    {"Name", "Zeichnet Name des Objekts.",},
                    {"Skelett", "Zeichnet Skelett des Spielers.",},
                    {"Glow", "Malt einen Glow Effekt um Spieler", {"Aus", "Team Farbe", "Gesundheits Farbe",},},
                    {"Gesundheit", "Gesundheits Optionen konfigurieren.", [4] = {"Balken", "Nummer",},},
                    {"Rüstung", "Rüstungs Optionen konfigurieren.", [4] = {"Balken", "Nummer",},},
                    {"Waffen", "Zeichnet den Waffen Namen.", {"Aus", "Aktiv", "Alle", "Aktiv + Granaten",},},
                    {"Flags", "Zeigt Aktivitäten des Spielers", [4] = {"Entschärft", "Platziert", "Scoped", "Lädt nach", "Geflashed", "Hat Defuser", "Hat C4",},},
                    {"Geld", "Zeichnet wie viel Geld der Spieler hat.",},
                    {"Blickrichtung", "Malt eine Linie, wo der Spieler hinguckt.",},
                },
                {
                    {"Box", "Zeichnet eine 2D Box.", {"Aus", "Outlined", "Normal",},},
                    {"Box Precision", "Zeichnet eine präzisere Box um das Objekt.",},
                    {"Name", "Zeichnet Name des Objekts.",},
                    {"Skelett", "Zeichnet Skelett des Spielers.",},
                    {"Glow", "Malt einen Glow Effekt um Spieler", {"Aus", "Team Farbe", "Gesundheits Farbe",},},
                    {"Gesundheit", "Gesundheits Optionen konfigurieren.", [4] = {"Balken", "Nummer",},},
                    {"Rüstung", "Rüstungs Optionen konfigurieren.", [4] = {"Balken", "Nummer",},},
                    {"Waffen", "Zeichnet den Waffen Namen.", {"Aus", "Aktiv", "Alle", "Aktiv + Granaten",},},
                    {"Flags", "Zeigt Aktivitäten des Spielers", [4] = {"Entschärft", "Platziert", "Scoped", "Lädt nach", "Geflashed", "Hat Defuser", "Hat C4",},},
                    {"Geld", "Zeichnet wie viel Geld der Spieler hat.",},
                    {"Blickrichtung", "Malt eine Linie, wo der Spieler hinguckt.",},
                },
                {
                    {"Box", "Zeichnet eine 2D Box.", {"Aus", "Outlined", "Normal",},},
                    {"Box Precision", "Zeichnet eine präzisere Box um das Objekt.",},
                    {"Name", "Zeichnet Name des Objekts",},
                    {"Munition", "Anzahl der Munition die in der Waffe vorhanden ist.",},
                    {"C4 Timer", "Zeigt einen Timer an, wann die Bombe explodiert.",},
                    {"Danger Zone Items", "Zeigt verschiedene Gegenstände in Dangerzone an.",},
                    {"Danger Zone Geschütz", "Zeigt Geschütze in Dangerzone an.",},
                },
            },
            {
                {"Camera", "Hilfestellungen",},
                {
                    {"Third Person Toggle", "Aktiviert die Third Person Sicht.",},
                    {"Third Person Distanz", "Distanz der Third Person Sicht.",},
                    {"Smooth Ghost Model", "Ghost Model geht mit echtem Model einher.",},
                },
                {
                    {"Wallbang Schaden", "Zeigt penetrierbare Flächen auf Hindernissen an.",},
                    {"Außerhalb des Sichtfelds", "Zeigt Gegner außerhalb des Sichtfelds an.",},  
                },
            },
            {
                {"Extra", "Materialien", "Granaten",},
                {
                    {"Hitmarker", "Spielt einen Sound beim Treffen eines Gegners.",},
                    {"Schritte", "Zeit Schritte visuell an.",},
                },
                {
                    {"Walls Color",},
                    {"Static Props Color",},
                    {"Skybox", "Ändert das Aussehen des Himmels",},
                },
                {
                    {"Inferno", "Zeigt Brandgranaten und Molotovs an.", [4] = {"Eigene", "Team", "Gegner",},},
                    {"Granaten Prognose", "Zeigt an, wo Granaten hinfliegen.", [4] = {"Eigene", "Team", "Gegner",},},
                },
            },
            {
                {"Team", "Gegner", "Lokal", "Ghost", "Backtrack", "Weapon",},
                {
                    {"Verdeckt", "Material verdeckt von Hindernissen.", {"Aus", "Flat", "Color", "Metalic", "Glow",},},
                    {"Sichtbar", "Sichtbares Material.", {"Aus", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Overlay", "Ersetzt vorherige Materialien.", {"Aus", "Wireframe",},},
                },
                {
                    {"Verdeckt", "Material verdeckt von Hindernissen.", {"Aus", "Flat", "Color", "Metalic", "Glow",},},
                    {"Sichtbar", "Sichtbares Material.", {"Aus", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Overlay", "Ersetzt vorherige Materialien.", {"Aus", "Wireframe",},},
                },
                {
                    {"Verdeckt", "Material verdeckt von Hindernissen.", {"Aus", "Flat", "Color", "Metalic", "Glow",},},
                    {"Sichtbar", "Sichtbares Material.", {"Aus", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Overlay", "Ersetzt vorherige Materialien.", {"Aus", "Wireframe",},},
                },
                {
                    {"Verdeckt", "Material verdeckt von Hindernissen.", {"Aus", "Flat", "Color", "Metalic", "Glow",},},
                    {"Sichtbar", "Sichtbares Material.", {"Aus", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Overlay", "Ersetzt vorherige Materialien.", {"Aus", "Wireframe",},},
                },
                {
                    {"Verdeckt", "Material verdeckt von Hindernissen.", {"Aus", "Flat", "Color", "Metalic", "Glow",},},
                    {"Sichtbar", "Sichtbares Material.", {"Aus", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Overlay", "Ersetzt vorherige Materialien.", {"Aus", "Wireframe",},},
                },
                {
                    {"Verdeckt", "Material verdeckt von Hindernissen.", {"Aus", "Flat", "Color", "Metalic", "Glow",},},
                    {"Sichtbar", "Sichtbares Material.", {"Aus", "Flat", "Color", "Metalic", "Glow", "Textured", "Invisible",},},
                    {"Overlay", "Ersetzt vorherige Materialien.", {"Aus", "Wireframe",},},
                },
            },
            {
                {"Visuelle Items ändern",},
                {
                    {"Item", "Wähle Waffe or Model",},
                    {"Paint Kits", "Wähle Skins für Waffen",},
                    {"Wear", "Qualität des Skins",},
                    {"Seed", "Seed der Textur-Generation",},
                    {"StatTrak", "Kill-Zähler für Waffen",},
                    {"Name", "Eigener Name für Waffen.",},
                    {"Hinzufügen",},
                    {"Entfernen",},
                },
            },
            {
                {"Extra", "Performance", "Effekte",},
                {
                    {"Radar", "Zeigt Radar an.",},
                    {"Radar Reichweite", "Setzt Radar Reichweite.",},
                    {"Fadenkreuz", "Zeigt eigenes Fadenkreuz an.",},
                    {"Rückstoß-Fadenkreuz", "Zeichnet wo Schüsse aufgrund von Rückstoß einschlagen.", {"Aus", "Linie", "Fade",},},
                    {"Anti-OBS", "Versteckt Visuelle Effekte beim Aufnehmen mit OBS",},
                    {"Anti-Screenshot", "Zeigt keine Visuellen Effekte auf Screenshots.",},
                    {"Preserve Killfeed", "Killfeed verschwindet erst beim Rundenbeginn.",},
                },
                {
                    {"Kein Rendern für Teammitglieder",},
                    {"Kein Rendern für Gegner",},
                    {"Kein Rendern für Waffen",},
                    {"Kein Rendern für Todesanimationen",},
                    {"Kein Rendern für weit entfernte Objekte",},
                },
                {
                    {"Kein Flash Effekt",},
                    {"Kein Smoke Effekt",},
                    {"Kein visueller Rückstoß",},
                    {"Kein Scope",},
                    {"Kein Scope Overlay",},
                    {"Kein Himmel",},
                    {"Kein Nebel",},
                    {"Kein Post Processing",},
                },
            },
        },
        {
            {"Allgemein", "Bewegung", "Verbesserung",},
            {
                {"Extra", "Logs", "Beschränkungen", "Bypass", "Server",},
                {
                    {"Zeige Zuschauer", "Zeigt an, wer dir zuschaut.",},
                    {"Zeige Ränge", "Zeigt Ränge von Spielern.",},
                    {"Automatisches Akzeptieren", "Automatisches Akzeptieren beim Suchen eines Spiels.",},
                },
                {
                    {"Schaden Logs", "Zeichnet Schaden der Runde auf.",},
                    {"Einkäufe Logs", "Zeichnet Einkäufe des Gegnerteams auf.",},
                    {"Konsolen Logs", "Zeigt Konsolen Operationen auf dem Bildschirm.",},
                },
                {
                    {"Anti-Untrusted", "Verhindert das Nutzen von Features auf VAC Servern.",},
                },
                {
                    {"Bypass sv_pure", "Verhindert das Untersuchen auf Vollständigkeit der Materialien.",},
                    {"Bypass sv_cheats", "Bypasst geschütze convars.",},
                    {"Steam Errungenschaften freischalten.",},
                    {"Zeige versteckte ConVars",},
                },
                {
                    {"sv_maxunlag", "Konfiguriert maximales Backtracking auf Seiten des Servers.",},
                    {"sv_maxusrcmdprocessticks", "Konfiguriert maximalen Fakelag auf Seiten des Servers.",},
                },
            },
            {
                {"Springen", "Andere", "Strafe",},
                {
                    {"Automatisches Springen", "Wählt Modus fürs Bunnyhopping.", {"Aus", "Perfekt", "Legit",},},
                    {"Kanten Sprung", "Springt kurz vor der Kante ab.",},
                    {"Geducktes Springen", "Springe höher durchs Ducken beim Springen.",},
                    {"Auto Jump-Bug", "Kein Fallschaden beim Herunterfallen von gewissen Höhen.",},
                },
                {
                    {"Schnelles Ducken", "Schnelleres Ducken durch Exploit im Movement.",},
                    {"Slide Walk", "Glitcht Laufanimation sodass es aussieht als würde man rutschen."},
                },
                {
                    {"Aktivieren", "Aktiviert Autostrafer um höhere Geschwindigkeiten zu erreichen.",},
                    {"Air Strafe", "Erhöht Geschwindigkeit beim Springen.",},
                    {"Strafe Modus", "Wählt Style vom Autostrafing.", {"Lautlos", "Normal", "Seitwärts", "W-Only", "Maus",},},
                    {"Circle Strafe", "Strafed automatisch im Kreis.",},
                    {"Snake Strafe", "Strafed wie eine Schlange.",},
                    {"Retrack Speed", "Zeit wie lange der Strafer braucht um die Richtung zu wechseln.",},
                    {"WASD-Movement", "Bewegt sich in Richtung der gedrückten Tasten.",},
                },
            },
            {
                {"Fakelag", "Fakelatency", "Erscheinung",},
                {
                    {"Aktivieren", "Aktiviert Lag Effekt.",},
                    {"Auf Taste", "Aktiviert den Lag nur, wenn Taste gedrückt ist.",},
                    {"Art", "Art oder Muster des Fakelags.", {"Normal", "Adaptiv", "Random", "Switch",},},
                    {"Faktor", "Wie viele Pakete gechoked werden.",},
                    {"Aktiviert Peek Modus", "Laggt das Model hinter eine Wand beim Peeken.",},
                    {"Zustände", "Konfiguriert Fakelag.", [4] = {"Beim Stehen", "In der Luft", "Auf dem Boden",},},
                },
                {
                    {"Aktivieren", "Aktiviert die Fakelatenz",},
                    {"Auf Taste", "Latenz wird nur erhöht wenn Taste gedrückt ist.",},
                    {"Wert", "Höchste Latenz die erreicht wird.",},
                },
                {
                    {"Namen stehlen", "Stiehlt Namen von anderen Spielern, limitiert auf 5.",},
                    {"Unsichtbarer Name", "Macht den eigenen Namen unsichtbar.",},
                    {"Chat Spam", "Bewirbt AIMWARE im Chat",},
                    {"Clantag Changer", "Setzt AIMWARE als dein Clantag.",},
                },
            },
        },
        {
            {"Configs", "Lua Scripts", "Erweitert",},
            {
                {"Configs verwalten",},
                {
                    {"Name", "Erstellen oder umbenennen einer Config.",},
                    {"Erstellen",},
                    {"Umbenennen",},
                    {"Laden",},
                    {"Speichern",},
                    {"Reset",},
                    {"Löschen",},
                    {"Export zum Clipboard",},
                    {"Import vom Clipboard",},
                    {"Als Default setzen",},
                    {"Liste aktualisieren",},
                },
            },
            {
                {"Scripts verwalten",},
                {
                    {"Name", "Erstellen oder umbenennen eines Scripts.",},
                    {"Erstellen",},
                    {"Umbenennen",},
                    {"Editieren (BETA)",},
                    {"Laden",},
                    {"Entladen",},
                    {"Reset Lua State",},
                    {"Löschen",},
                    {"Als Autorun setzen",},
                    {"Liste aktualisieren",},
                },
            },
            {
                {"Erweiterte Einstellungen verwalten",},
                {
                    {"Menu Taste", "Taste mit der das Menu geöffnet wird.",},
                    {"Konsole Taste", "Taste mit der die Konsole geöffnet wird.",},
                    {"DPI Scale", "Skaliert die Größe des UI.",},
                    {"Open Settings Folder",},
                    {"Menu Sprache",},
                },
            },
        },
    },

};

local function SetLanguage(lg)
    for i = 1, #db[db.prev][1] do
        for j = 1, #db[db.prev][(i + 1)][1] do
            for k = 1, #db[db.prev][(i + 1)][(j + 1)][1] do
                for l = 1, #db[db.prev][(i + 1)][(j + 1)][(k + 1)] do                   
                    if db[db.prev][(i + 1)][(j + 1)][(k + 1)][l][5] == nil and db[db.prev][(i + 1)][(j + 1)][(k + 1)][l][6] == nil then --Cannot acces inside of per weapon groupboxes and aa tab
                        if db[db.prev][(i + 1)][(j + 1)][(k + 1)][l][1] ~= nil then
                            local curr_ref = gui.Reference(db[db.prev][1][i], db[db.prev][(i + 1)][1][j], db[db.prev][(i + 1)][(j + 1)][1][k], db[db.prev][(i + 1)][(j + 1)][(k + 1)][l][1]);
                            if db[db.prev][(i + 1)][(j + 1)][(k + 1)][l][4] ~= nil then
                                for m = 1, #db[db.prev][(i + 1)][(j + 1)][(k + 1)][l][4] do --Multibox
                                    gui.Reference(db[db.prev][1][i], db[db.prev][(i + 1)][1][j], db[db.prev][(i + 1)][(j + 1)][1][k], db[db.prev][(i + 1)][(j + 1)][(k + 1)][l][1], db[db.prev][(i + 1)][(j + 1)][(k + 1)][l][4][m]):SetName(db[lg][(i + 1)][(j + 1)][(k + 1)][l][4][m]);
                                end;
                            end;
                            if db[db.prev][(i + 1)][(j + 1)][(k + 1)][l][3] ~= nil then
                                curr_ref:SetOptions(unpack(db[lg][(i + 1)][(j + 1)][(k + 1)][l][3])); --Radio buttons doesn't accept :SetOptions
                            end;
                            if db[db.prev][(i + 1)][(j + 1)][(k + 1)][l][2] ~= nil then                                
                                curr_ref:SetDescription(db[lg][(i + 1)][(j + 1)][(k + 1)][l][2]);
                            end;                        
                                curr_ref:SetName(db[lg][(i + 1)][(j + 1)][(k + 1)][l][1]);
                        else
                            if db[db.prev][(i + 1)][(j + 1)][(k + 1)][l][2] ~= nil then --Some Groupboxes have descriptions but it seems broken in per weapon groupboxes
                                gui.Reference(db[db.prev][1][i], db[db.prev][(i + 1)][1][j], db[db.prev][(i + 1)][(j + 1)][1][k]):SetDescription(db[lg][(i + 1)][(j + 1)][(k + 1)][l][2]);
                            end;
                        end;
                    end;
                end;
            gui.Reference(db[db.prev][1][i], db[db.prev][(i + 1)][1][j], db[db.prev][(i + 1)][(j + 1)][1][k]):SetName(db[lg][(i + 1)][(j + 1)][1][k]);
            end;
        gui.Reference(db[db.prev][1][i], db[db.prev][(i + 1)][1][j]):SetName(db[lg][(i + 1)][1][j]);
        end;
    gui.Reference(db[db.prev][1][i]):SetName(db[lg][1][i]);
    end;
    db.prev = lg;
end;

local ui_select = gui.Combobox(gui.Reference("Settings", "Advanced", "Manage advanced settings"), "language", "Menu Language", unpack(db.lang));

callbacks.Register("Draw", function()
    if db.lang[(ui_select:GetValue() + 1)] ~= db.prev then
        SetLanguage(db.lang[(ui_select:GetValue() + 1)]);
    end;
end);

callbacks.Register("Unload", function()
    SetLanguage(db.lang[1]);
end);