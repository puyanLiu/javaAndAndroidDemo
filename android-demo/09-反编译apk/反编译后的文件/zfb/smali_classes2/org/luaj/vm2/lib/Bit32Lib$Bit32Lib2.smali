.class final Lorg/luaj/vm2/lib/Bit32Lib$Bit32Lib2;
.super Lorg/luaj/vm2/lib/TwoArgFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget v0, p0, Lorg/luaj/vm2/lib/Bit32Lib$Bit32Lib2;->opcode:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lorg/luaj/vm2/lib/Bit32Lib$Bit32Lib2;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v0

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/Bit32Lib;->arshift(II)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v0

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/Bit32Lib;->lrotate(II)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v0

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/Bit32Lib;->lshift(II)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v0

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/Bit32Lib;->rrotate(II)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v0

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/Bit32Lib;->rshift(II)Lorg/luaj/vm2/LuaValue;

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
