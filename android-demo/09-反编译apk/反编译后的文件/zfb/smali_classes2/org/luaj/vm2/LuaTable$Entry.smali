.class abstract Lorg/luaj/vm2/LuaTable$Entry;
.super Lorg/luaj/vm2/Varargs;

# interfaces
.implements Lorg/luaj/vm2/LuaTable$StrongSlot;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/Varargs;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lorg/luaj/vm2/LuaTable$Slot;)Lorg/luaj/vm2/LuaTable$Slot;
    .locals 1

    new-instance v0, Lorg/luaj/vm2/LuaTable$LinkSlot;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/LuaTable$LinkSlot;-><init>(Lorg/luaj/vm2/LuaTable$Entry;Lorg/luaj/vm2/LuaTable$Slot;)V

    return-object v0
.end method

.method public arg(I)Lorg/luaj/vm2/LuaValue;
    .locals 1

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lorg/luaj/vm2/LuaTable$Entry;->key()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lorg/luaj/vm2/LuaTable$Entry;->value()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public arg1()Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaTable$Entry;->key()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public arraykey(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public find(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$StrongSlot;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/luaj/vm2/LuaTable$Entry;->keyeq(Lorg/luaj/vm2/LuaValue;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public first()Lorg/luaj/vm2/LuaTable$StrongSlot;
    .locals 0

    return-object p0
.end method

.method public abstract key()Lorg/luaj/vm2/LuaValue;
.end method

.method public narg()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public relink(Lorg/luaj/vm2/LuaTable$Slot;)Lorg/luaj/vm2/LuaTable$Slot;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/luaj/vm2/LuaTable$LinkSlot;

    invoke-direct {v0, p0, p1}, Lorg/luaj/vm2/LuaTable$LinkSlot;-><init>(Lorg/luaj/vm2/LuaTable$Entry;Lorg/luaj/vm2/LuaTable$Slot;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public remove(Lorg/luaj/vm2/LuaTable$StrongSlot;)Lorg/luaj/vm2/LuaTable$Slot;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lorg/luaj/vm2/LuaTable$DeadSlot;

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaTable$Entry;->key()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lorg/luaj/vm2/LuaTable$DeadSlot;-><init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaTable$Slot;Lorg/luaj/vm2/LuaTable$1;)V

    return-object v0
.end method

.method public rest()Lorg/luaj/vm2/LuaTable$Slot;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract set(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Entry;
.end method

.method public set(Lorg/luaj/vm2/LuaTable$StrongSlot;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Slot;
    .locals 1

    invoke-virtual {p0, p2}, Lorg/luaj/vm2/LuaTable$Entry;->set(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Entry;

    move-result-object v0

    return-object v0
.end method

.method public subargs(I)Lorg/luaj/vm2/Varargs;
    .locals 0

    packed-switch p1, :pswitch_data_0

    sget-object p0, Lorg/luaj/vm2/LuaValue;->NONE:Lorg/luaj/vm2/LuaValue;

    :goto_0
    :pswitch_0
    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lorg/luaj/vm2/LuaTable$Entry;->value()Lorg/luaj/vm2/LuaValue;

    move-result-object p0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public toVarargs()Lorg/luaj/vm2/Varargs;
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaTable$Entry;->key()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaTable$Entry;->value()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaValue;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public abstract value()Lorg/luaj/vm2/LuaValue;
.end method
