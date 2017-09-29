.class final Lorg/luaj/vm2/lib/StringLib$StringLib1;
.super Lorg/luaj/vm2/lib/OneArgFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget v0, p0, Lorg/luaj/vm2/lib/StringLib$StringLib1;->opcode:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lorg/luaj/vm2/lib/StringLib$StringLib1;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p1}, Lorg/luaj/vm2/lib/StringLib;->dump(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lorg/luaj/vm2/lib/StringLib;->len(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lorg/luaj/vm2/lib/StringLib;->lower(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lorg/luaj/vm2/lib/StringLib;->reverse(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lorg/luaj/vm2/lib/StringLib;->upper(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
