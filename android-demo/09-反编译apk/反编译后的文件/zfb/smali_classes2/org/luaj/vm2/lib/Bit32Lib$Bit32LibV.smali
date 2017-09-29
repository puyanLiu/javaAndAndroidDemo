.class final Lorg/luaj/vm2/lib/Bit32Lib$Bit32LibV;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 5

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x1

    iget v0, p0, Lorg/luaj/vm2/lib/Bit32Lib$Bit32LibV;->opcode:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lorg/luaj/vm2/lib/Bit32Lib$Bit32LibV;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p1}, Lorg/luaj/vm2/lib/Bit32Lib;->band(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lorg/luaj/vm2/lib/Bit32Lib;->bnot(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lorg/luaj/vm2/lib/Bit32Lib;->bor(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lorg/luaj/vm2/lib/Bit32Lib;->btest(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lorg/luaj/vm2/lib/Bit32Lib;->bxor(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1, v4}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v0

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v1

    invoke-virtual {p1, v2, v4}, Lorg/luaj/vm2/Varargs;->optint(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/luaj/vm2/lib/Bit32Lib;->extract(III)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1, v4}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v0

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v1

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v4}, Lorg/luaj/vm2/Varargs;->optint(II)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lorg/luaj/vm2/lib/Bit32Lib;->replace(IIII)Lorg/luaj/vm2/LuaValue;

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
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
