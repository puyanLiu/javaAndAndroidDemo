.class final Lorg/luaj/vm2/lib/DebugLib$setmetatable;
.super Lorg/luaj/vm2/lib/TwoArgFunction;


# instance fields
.field private final a:Lorg/luaj/vm2/lib/DebugLib;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/DebugLib;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/DebugLib$setmetatable;->a:Lorg/luaj/vm2/lib/DebugLib;

    return-void
.end method


# virtual methods
.method public final call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/luaj/vm2/LuaValue;->opttable(Lorg/luaj/vm2/LuaTable;)Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/LuaValue;->setmetatable(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object p1

    :pswitch_1
    sput-object v0, Lorg/luaj/vm2/LuaNil;->s_metatable:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :pswitch_2
    sput-object v0, Lorg/luaj/vm2/LuaNumber;->s_metatable:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :pswitch_3
    sput-object v0, Lorg/luaj/vm2/LuaBoolean;->s_metatable:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :pswitch_4
    sput-object v0, Lorg/luaj/vm2/LuaString;->s_metatable:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :pswitch_5
    sput-object v0, Lorg/luaj/vm2/LuaFunction;->s_metatable:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :pswitch_6
    sput-object v0, Lorg/luaj/vm2/LuaThread;->s_metatable:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
