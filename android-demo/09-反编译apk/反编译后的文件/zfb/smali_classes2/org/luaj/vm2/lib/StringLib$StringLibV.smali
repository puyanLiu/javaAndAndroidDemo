.class final Lorg/luaj/vm2/lib/StringLib$StringLibV;
.super Lorg/luaj/vm2/lib/VarArgFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    iget v0, p0, Lorg/luaj/vm2/lib/StringLib$StringLibV;->opcode:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lorg/luaj/vm2/lib/StringLib$StringLibV;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p1}, Lorg/luaj/vm2/lib/StringLib;->byte_(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lorg/luaj/vm2/lib/StringLib;->char_(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lorg/luaj/vm2/lib/StringLib;->find(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lorg/luaj/vm2/lib/StringLib;->format(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lorg/luaj/vm2/lib/StringLib;->gmatch(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {p1}, Lorg/luaj/vm2/lib/StringLib;->gsub(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {p1}, Lorg/luaj/vm2/lib/StringLib;->match(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {p1}, Lorg/luaj/vm2/lib/StringLib;->rep(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    invoke-static {p1}, Lorg/luaj/vm2/lib/StringLib;->sub(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

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
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
