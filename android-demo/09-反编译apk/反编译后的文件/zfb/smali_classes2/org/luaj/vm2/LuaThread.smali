.class public Lorg/luaj/vm2/LuaThread;
.super Lorg/luaj/vm2/LuaValue;


# static fields
.field public static GC_INTERVAL:I = 0x0

.field public static final MAX_CALLSTACK:I = 0x100

.field public static final STATUS_DEAD:I = 0x4

.field public static final STATUS_INITIAL:I = 0x0

.field public static final STATUS_NAMES:[Ljava/lang/String;

.field public static final STATUS_NORMAL:I = 0x3

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SUSPENDED:I = 0x1

.field public static coroutine_count:I

.field public static s_metatable:Lorg/luaj/vm2/LuaValue;

.field static thread_orphan_check_interval:J


# instance fields
.field public bytecodes:I

.field public callstack:Ljava/lang/Object;

.field public errorfunc:Lorg/luaj/vm2/LuaValue;

.field public final globals:Lorg/luaj/vm2/Globals;

.field public hookcall:Z

.field public hookcount:I

.field public hookfunc:Lorg/luaj/vm2/LuaValue;

.field public hookline:Z

.field public hookrtrn:Z

.field public inhook:Z

.field public lastline:I

.field public final state:Lorg/luaj/vm2/LuaThread$State;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput v2, Lorg/luaj/vm2/LuaThread;->coroutine_count:I

    const-wide/16 v0, 0x7530

    sput-wide v0, Lorg/luaj/vm2/LuaThread;->thread_orphan_check_interval:J

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "suspended"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string/jumbo v2, "suspended"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "running"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "normal"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "dead"

    aput-object v2, v0, v1

    sput-object v0, Lorg/luaj/vm2/LuaThread;->STATUS_NAMES:[Ljava/lang/String;

    const/16 v0, 0x7530

    sput v0, Lorg/luaj/vm2/LuaThread;->GC_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Lorg/luaj/vm2/Globals;)V
    .locals 2

    invoke-direct {p0}, Lorg/luaj/vm2/LuaValue;-><init>()V

    new-instance v0, Lorg/luaj/vm2/LuaThread$State;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lorg/luaj/vm2/LuaThread$State;-><init>(Lorg/luaj/vm2/Globals;Lorg/luaj/vm2/LuaThread;Lorg/luaj/vm2/LuaValue;)V

    iput-object v0, p0, Lorg/luaj/vm2/LuaThread;->state:Lorg/luaj/vm2/LuaThread$State;

    iget-object v0, p0, Lorg/luaj/vm2/LuaThread;->state:Lorg/luaj/vm2/LuaThread$State;

    const/4 v1, 0x2

    iput v1, v0, Lorg/luaj/vm2/LuaThread$State;->status:I

    iput-object p1, p0, Lorg/luaj/vm2/LuaThread;->globals:Lorg/luaj/vm2/Globals;

    return-void
.end method

.method public constructor <init>(Lorg/luaj/vm2/Globals;Lorg/luaj/vm2/LuaValue;)V
    .locals 2

    invoke-direct {p0}, Lorg/luaj/vm2/LuaValue;-><init>()V

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "function cannot be null"

    invoke-static {v0, v1}, Lorg/luaj/vm2/LuaValue;->assert_(ZLjava/lang/String;)V

    new-instance v0, Lorg/luaj/vm2/LuaThread$State;

    invoke-direct {v0, p1, p0, p2}, Lorg/luaj/vm2/LuaThread$State;-><init>(Lorg/luaj/vm2/Globals;Lorg/luaj/vm2/LuaThread;Lorg/luaj/vm2/LuaValue;)V

    iput-object v0, p0, Lorg/luaj/vm2/LuaThread;->state:Lorg/luaj/vm2/LuaThread$State;

    iput-object p1, p0, Lorg/luaj/vm2/LuaThread;->globals:Lorg/luaj/vm2/Globals;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkthread()Lorg/luaj/vm2/LuaThread;
    .locals 0

    return-object p0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    sget-object v0, Lorg/luaj/vm2/LuaThread;->STATUS_NAMES:[Ljava/lang/String;

    iget-object v1, p0, Lorg/luaj/vm2/LuaThread;->state:Lorg/luaj/vm2/LuaThread$State;

    iget v1, v1, Lorg/luaj/vm2/LuaThread$State;->status:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getmetatable()Lorg/luaj/vm2/LuaValue;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/LuaThread;->s_metatable:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public isMainThread()Z
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/LuaThread;->state:Lorg/luaj/vm2/LuaThread$State;

    iget-object v0, v0, Lorg/luaj/vm2/LuaThread$State;->function:Lorg/luaj/vm2/LuaValue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isthread()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public optthread(Lorg/luaj/vm2/LuaThread;)Lorg/luaj/vm2/LuaThread;
    .locals 0

    return-object p0
.end method

.method public resume(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    iget-object v0, p0, Lorg/luaj/vm2/LuaThread;->state:Lorg/luaj/vm2/LuaThread$State;

    iget v1, v0, Lorg/luaj/vm2/LuaThread$State;->status:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    sget-object v1, Lorg/luaj/vm2/LuaValue;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "cannot resume "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lorg/luaj/vm2/LuaThread$State;->status:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "dead"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, " coroutine"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaValue;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/luaj/vm2/LuaValue;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v0, "non-suspended"

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0, p1}, Lorg/luaj/vm2/LuaThread$State;->lua_resume(Lorg/luaj/vm2/LuaThread;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_1
.end method

.method public type()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public typename()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "thread"

    return-object v0
.end method
