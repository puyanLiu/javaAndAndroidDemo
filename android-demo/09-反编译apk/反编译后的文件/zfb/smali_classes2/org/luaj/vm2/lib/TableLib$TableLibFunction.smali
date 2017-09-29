.class Lorg/luaj/vm2/lib/TableLib$TableLibFunction;
.super Lorg/luaj/vm2/lib/LibFunction;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lorg/luaj/vm2/LuaValue;
    .locals 2

    const/4 v0, 0x1

    const-string/jumbo v1, "table expected, got no value"

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/TableLib$TableLibFunction;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method
