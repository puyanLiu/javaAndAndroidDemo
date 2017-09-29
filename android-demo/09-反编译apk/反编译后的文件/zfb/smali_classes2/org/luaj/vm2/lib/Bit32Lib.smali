.class public Lorg/luaj/vm2/lib/Bit32Lib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;


# static fields
.field static class$org$luaj$vm2$lib$Bit32Lib$Bit32Lib2:Ljava/lang/Class;

.field static class$org$luaj$vm2$lib$Bit32Lib$Bit32LibV:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method private static a(I)Lorg/luaj/vm2/LuaValue;
    .locals 4

    if-gez p0, :cond_0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/Bit32Lib;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lorg/luaj/vm2/lib/Bit32Lib;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    goto :goto_0
.end method

.method static arshift(II)Lorg/luaj/vm2/LuaValue;
    .locals 1

    if-ltz p1, :cond_0

    shr-int v0, p0, p1

    invoke-static {v0}, Lorg/luaj/vm2/lib/Bit32Lib;->a(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    neg-int v0, p1

    shl-int v0, p0, v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/Bit32Lib;->a(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method static band(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v1, -0x1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v2

    if-gt v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/luaj/vm2/lib/Bit32Lib;->a(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method static bnot(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lorg/luaj/vm2/lib/Bit32Lib;->a(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method static bor(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v2

    if-gt v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/luaj/vm2/lib/Bit32Lib;->a(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method static btest(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v3

    if-gt v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v3

    and-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    :goto_1
    invoke-static {v1}, Lorg/luaj/vm2/lib/Bit32Lib;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static bxor(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v2

    if-gt v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/Varargs;->checkint(I)I

    move-result v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/luaj/vm2/lib/Bit32Lib;->a(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static extract(III)Lorg/luaj/vm2/LuaValue;
    .locals 3

    if-gez p1, :cond_0

    const/4 v0, 0x2

    const-string/jumbo v1, "field cannot be negative"

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/Bit32Lib;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_0
    if-gez p2, :cond_1

    const/4 v0, 0x3

    const-string/jumbo v1, "width must be postive"

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/Bit32Lib;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_1
    add-int v0, p1, p2

    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    const-string/jumbo v0, "trying to access non-existent bits"

    invoke-static {v0}, Lorg/luaj/vm2/lib/Bit32Lib;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_2
    ushr-int v0, p0, p1

    const/4 v1, -0x1

    rsub-int/lit8 v2, p2, 0x20

    ushr-int/2addr v1, v2

    and-int/2addr v0, v1

    invoke-static {v0}, Lorg/luaj/vm2/lib/Bit32Lib;->a(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method static lrotate(II)Lorg/luaj/vm2/LuaValue;
    .locals 2

    if-gez p1, :cond_0

    neg-int v0, p1

    invoke-static {p0, v0}, Lorg/luaj/vm2/lib/Bit32Lib;->rrotate(II)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    and-int/lit8 v0, p1, 0x1f

    shl-int v1, p0, v0

    rsub-int/lit8 v0, v0, 0x20

    ushr-int v0, p0, v0

    or-int/2addr v0, v1

    invoke-static {v0}, Lorg/luaj/vm2/lib/Bit32Lib;->a(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method static lshift(II)Lorg/luaj/vm2/LuaValue;
    .locals 1

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    const/16 v0, -0x20

    if-gt p1, v0, :cond_1

    :cond_0
    sget-object v0, Lorg/luaj/vm2/lib/Bit32Lib;->ZERO:Lorg/luaj/vm2/LuaNumber;

    :goto_0
    return-object v0

    :cond_1
    if-ltz p1, :cond_2

    shl-int v0, p0, p1

    invoke-static {v0}, Lorg/luaj/vm2/lib/Bit32Lib;->a(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :cond_2
    neg-int v0, p1

    ushr-int v0, p0, v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/Bit32Lib;->a(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method static replace(IIII)Lorg/luaj/vm2/LuaValue;
    .locals 3

    if-gez p2, :cond_0

    const/4 v0, 0x3

    const-string/jumbo v1, "field cannot be negative"

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/Bit32Lib;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_0
    if-gez p3, :cond_1

    const/4 v0, 0x4

    const-string/jumbo v1, "width must be postive"

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/Bit32Lib;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_1
    add-int v0, p2, p3

    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    const-string/jumbo v0, "trying to access non-existent bits"

    invoke-static {v0}, Lorg/luaj/vm2/lib/Bit32Lib;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_2
    const/4 v0, -0x1

    rsub-int/lit8 v1, p3, 0x20

    ushr-int/2addr v0, v1

    shl-int/2addr v0, p2

    xor-int/lit8 v1, v0, -0x1

    and-int/2addr v1, p0

    shl-int v2, p1, p2

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    invoke-static {v0}, Lorg/luaj/vm2/lib/Bit32Lib;->a(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method static rrotate(II)Lorg/luaj/vm2/LuaValue;
    .locals 2

    if-gez p1, :cond_0

    neg-int v0, p1

    invoke-static {p0, v0}, Lorg/luaj/vm2/lib/Bit32Lib;->lrotate(II)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    and-int/lit8 v0, p1, 0x1f

    ushr-int v1, p0, v0

    rsub-int/lit8 v0, v0, 0x20

    shl-int v0, p0, v0

    or-int/2addr v0, v1

    invoke-static {v0}, Lorg/luaj/vm2/lib/Bit32Lib;->a(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method static rshift(II)Lorg/luaj/vm2/LuaValue;
    .locals 1

    const/16 v0, 0x20

    if-ge p1, v0, :cond_0

    const/16 v0, -0x20

    if-gt p1, v0, :cond_1

    :cond_0
    sget-object v0, Lorg/luaj/vm2/lib/Bit32Lib;->ZERO:Lorg/luaj/vm2/LuaNumber;

    :goto_0
    return-object v0

    :cond_1
    if-ltz p1, :cond_2

    ushr-int v0, p0, p1

    invoke-static {v0}, Lorg/luaj/vm2/lib/Bit32Lib;->a(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0

    :cond_2
    neg-int v0, p1

    shl-int v0, p0, v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/Bit32Lib;->a(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v1}, Lorg/luaj/vm2/LuaTable;-><init>()V

    sget-object v0, Lorg/luaj/vm2/lib/Bit32Lib;->class$org$luaj$vm2$lib$Bit32Lib$Bit32LibV:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.luaj.vm2.lib.Bit32Lib$Bit32LibV"

    invoke-static {v0}, Lorg/luaj/vm2/lib/Bit32Lib;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/Bit32Lib;->class$org$luaj$vm2$lib$Bit32Lib$Bit32LibV:Ljava/lang/Class;

    :goto_0
    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "band"

    aput-object v3, v2, v5

    const-string/jumbo v3, "bnot"

    aput-object v3, v2, v6

    const-string/jumbo v3, "bor"

    aput-object v3, v2, v7

    const-string/jumbo v3, "btest"

    aput-object v3, v2, v8

    const-string/jumbo v3, "bxor"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "extract"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "replace"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v0, v2}, Lorg/luaj/vm2/lib/Bit32Lib;->bind(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;)V

    sget-object v0, Lorg/luaj/vm2/lib/Bit32Lib;->class$org$luaj$vm2$lib$Bit32Lib$Bit32Lib2:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.luaj.vm2.lib.Bit32Lib$Bit32Lib2"

    invoke-static {v0}, Lorg/luaj/vm2/lib/Bit32Lib;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/Bit32Lib;->class$org$luaj$vm2$lib$Bit32Lib$Bit32Lib2:Ljava/lang/Class;

    :goto_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "arshift"

    aput-object v3, v2, v5

    const-string/jumbo v3, "lrotate"

    aput-object v3, v2, v6

    const-string/jumbo v3, "lshift"

    aput-object v3, v2, v7

    const-string/jumbo v3, "rrotate"

    aput-object v3, v2, v8

    const-string/jumbo v3, "rshift"

    aput-object v3, v2, v9

    invoke-virtual {p0, v1, v0, v2}, Lorg/luaj/vm2/lib/Bit32Lib;->bind(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;)V

    const-string/jumbo v0, "bit32"

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "package"

    invoke-virtual {p2, v0}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    const-string/jumbo v2, "loaded"

    invoke-virtual {v0, v2}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    const-string/jumbo v2, "bit32"

    invoke-virtual {v0, v2, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-object v1

    :cond_0
    sget-object v0, Lorg/luaj/vm2/lib/Bit32Lib;->class$org$luaj$vm2$lib$Bit32Lib$Bit32LibV:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/lib/Bit32Lib;->class$org$luaj$vm2$lib$Bit32Lib$Bit32Lib2:Ljava/lang/Class;

    goto :goto_1
.end method
