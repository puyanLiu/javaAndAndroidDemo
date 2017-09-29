.class Lorg/luaj/vm2/lib/MathLib$random;
.super Lorg/luaj/vm2/lib/LibFunction;


# instance fields
.field random:Ljava/util/Random;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/lib/LibFunction;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/lib/MathLib$random;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public call()Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/lib/MathLib$random;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/MathLib$random;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v1, 0x1

    const-string/jumbo v2, "interval is empty"

    invoke-static {v1, v2}, Lorg/luaj/vm2/lib/MathLib$random;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_0
    iget-object v1, p0, Lorg/luaj/vm2/lib/MathLib$random;->random:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lorg/luaj/vm2/lib/MathLib$random;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 4

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v0

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkint()I

    move-result v1

    if-ge v1, v0, :cond_0

    const/4 v2, 0x2

    const-string/jumbo v3, "interval is empty"

    invoke-static {v2, v3}, Lorg/luaj/vm2/lib/MathLib$random;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_0
    iget-object v2, p0, Lorg/luaj/vm2/lib/MathLib$random;->random:Ljava/util/Random;

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Lorg/luaj/vm2/lib/MathLib$random;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method
