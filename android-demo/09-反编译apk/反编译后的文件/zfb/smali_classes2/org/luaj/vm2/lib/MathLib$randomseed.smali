.class Lorg/luaj/vm2/lib/MathLib$randomseed;
.super Lorg/luaj/vm2/lib/OneArgFunction;


# instance fields
.field final random:Lorg/luaj/vm2/lib/MathLib$random;


# direct methods
.method constructor <init>(Lorg/luaj/vm2/lib/MathLib$random;)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/OneArgFunction;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/lib/MathLib$randomseed;->random:Lorg/luaj/vm2/lib/MathLib$random;

    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 4

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checklong()J

    move-result-wide v0

    iget-object v2, p0, Lorg/luaj/vm2/lib/MathLib$randomseed;->random:Lorg/luaj/vm2/lib/MathLib$random;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3, v0, v1}, Ljava/util/Random;-><init>(J)V

    iput-object v3, v2, Lorg/luaj/vm2/lib/MathLib$random;->random:Ljava/util/Random;

    sget-object v0, Lorg/luaj/vm2/lib/MathLib$randomseed;->NONE:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method
