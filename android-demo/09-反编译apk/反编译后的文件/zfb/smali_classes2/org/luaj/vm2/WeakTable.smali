.class public Lorg/luaj/vm2/WeakTable;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/luaj/vm2/Metatable;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lorg/luaj/vm2/LuaValue;


# direct methods
.method public constructor <init>(ZZLorg/luaj/vm2/LuaValue;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/luaj/vm2/WeakTable;->a:Z

    iput-boolean p2, p0, Lorg/luaj/vm2/WeakTable;->b:Z

    iput-object p3, p0, Lorg/luaj/vm2/WeakTable;->c:Lorg/luaj/vm2/LuaValue;

    return-void
.end method

.method public static make(ZZ)Lorg/luaj/vm2/LuaTable;
    .locals 5

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "kv"

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    :goto_0
    invoke-static {}, Lorg/luaj/vm2/LuaTable;->tableOf()Lorg/luaj/vm2/LuaTable;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/luaj/vm2/LuaValue;

    const/4 v3, 0x0

    sget-object v4, Lorg/luaj/vm2/LuaValue;->MODE:Lorg/luaj/vm2/LuaString;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lorg/luaj/vm2/LuaTable;->tableOf([Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/luaj/vm2/LuaTable;->setmetatable(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    const-string/jumbo v0, "k"

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string/jumbo v0, "v"

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lorg/luaj/vm2/LuaTable;->tableOf()Lorg/luaj/vm2/LuaTable;

    move-result-object v0

    goto :goto_1
.end method

.method protected static strengthen(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    instance-of v0, p0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lorg/luaj/vm2/WeakTable$WeakValue;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/luaj/vm2/WeakTable$WeakValue;

    invoke-virtual {v0}, Lorg/luaj/vm2/WeakTable$WeakValue;->strongvalue()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    check-cast v0, Lorg/luaj/vm2/LuaValue;

    goto :goto_1

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method protected static weaken(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    new-instance v0, Lorg/luaj/vm2/WeakTable$WeakValue;

    invoke-direct {v0, p0}, Lorg/luaj/vm2/WeakTable$WeakValue;-><init>(Lorg/luaj/vm2/LuaValue;)V

    move-object p0, v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/luaj/vm2/WeakTable$WeakUserdata;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/luaj/vm2/WeakTable$WeakUserdata;-><init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/WeakTable$1;)V

    move-object p0, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public arrayget([Lorg/luaj/vm2/LuaValue;I)Lorg/luaj/vm2/LuaValue;
    .locals 2

    aget-object v0, p1, p2

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/luaj/vm2/WeakTable;->strengthen(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    aput-object v1, p1, p2

    :cond_0
    return-object v0
.end method

.method public entry(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Slot;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->strongvalue()Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lorg/luaj/vm2/WeakTable;->a:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isnumber()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isstring()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isboolean()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/luaj/vm2/WeakTable;->b:Z

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->isnumber()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->isstring()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->isboolean()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;

    invoke-direct {v1, p1, v2, v0}, Lorg/luaj/vm2/WeakTable$WeakKeyAndValueSlot;-><init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaTable$Slot;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/luaj/vm2/WeakTable$WeakKeySlot;

    invoke-direct {v1, p1, v2, v0}, Lorg/luaj/vm2/WeakTable$WeakKeySlot;-><init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaTable$Slot;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lorg/luaj/vm2/WeakTable;->b:Z

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->isnumber()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->isstring()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->isboolean()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/luaj/vm2/WeakTable$WeakValueSlot;

    invoke-direct {v1, p1, v2, v0}, Lorg/luaj/vm2/WeakTable$WeakValueSlot;-><init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaTable$Slot;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p1, v2}, Lorg/luaj/vm2/LuaTable;->defaultEntry(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaTable$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method public toLuaValue()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/WeakTable;->c:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public useWeakKeys()Z
    .locals 1

    iget-boolean v0, p0, Lorg/luaj/vm2/WeakTable;->a:Z

    return v0
.end method

.method public useWeakValues()Z
    .locals 1

    iget-boolean v0, p0, Lorg/luaj/vm2/WeakTable;->b:Z

    return v0
.end method

.method public wrap(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-boolean v0, p0, Lorg/luaj/vm2/WeakTable;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/luaj/vm2/WeakTable;->weaken(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object p1

    :cond_0
    return-object p1
.end method
