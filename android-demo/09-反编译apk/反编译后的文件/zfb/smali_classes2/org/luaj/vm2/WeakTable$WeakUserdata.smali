.class final Lorg/luaj/vm2/WeakTable$WeakUserdata;
.super Lorg/luaj/vm2/WeakTable$WeakValue;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;

.field private final b:Lorg/luaj/vm2/LuaValue;


# direct methods
.method private constructor <init>(Lorg/luaj/vm2/LuaValue;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/luaj/vm2/WeakTable$WeakValue;-><init>(Lorg/luaj/vm2/LuaValue;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakUserdata;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->getmetatable()Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakUserdata;->b:Lorg/luaj/vm2/LuaValue;

    return-void
.end method

.method constructor <init>(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/WeakTable$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/luaj/vm2/WeakTable$WeakUserdata;-><init>(Lorg/luaj/vm2/LuaValue;)V

    return-void
.end method


# virtual methods
.method public final strongvalue()Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakUserdata;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/WeakTable$WeakUserdata;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/WeakTable$WeakUserdata;->b:Lorg/luaj/vm2/LuaValue;

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaValue;->userdataOf(Ljava/lang/Object;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaUserdata;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/luaj/vm2/WeakTable$WeakUserdata;->ref:Ljava/lang/ref/WeakReference;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
