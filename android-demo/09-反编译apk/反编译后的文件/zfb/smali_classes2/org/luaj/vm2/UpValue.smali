.class public final Lorg/luaj/vm2/UpValue;
.super Ljava/lang/Object;


# instance fields
.field array:[Lorg/luaj/vm2/LuaValue;

.field index:I


# direct methods
.method public constructor <init>([Lorg/luaj/vm2/LuaValue;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/luaj/vm2/UpValue;->array:[Lorg/luaj/vm2/LuaValue;

    iput p2, p0, Lorg/luaj/vm2/UpValue;->index:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/luaj/vm2/UpValue;->array:[Lorg/luaj/vm2/LuaValue;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/luaj/vm2/LuaValue;

    iget v2, p0, Lorg/luaj/vm2/UpValue;->index:I

    aget-object v2, v0, v2

    aput-object v2, v1, v3

    iput-object v1, p0, Lorg/luaj/vm2/UpValue;->array:[Lorg/luaj/vm2/LuaValue;

    iget v1, p0, Lorg/luaj/vm2/UpValue;->index:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iput v3, p0, Lorg/luaj/vm2/UpValue;->index:I

    return-void
.end method

.method public final getValue()Lorg/luaj/vm2/LuaValue;
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/UpValue;->array:[Lorg/luaj/vm2/LuaValue;

    iget v1, p0, Lorg/luaj/vm2/UpValue;->index:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final setValue(Lorg/luaj/vm2/LuaValue;)V
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/UpValue;->array:[Lorg/luaj/vm2/LuaValue;

    iget v1, p0, Lorg/luaj/vm2/UpValue;->index:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget v1, p0, Lorg/luaj/vm2/UpValue;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/luaj/vm2/UpValue;->array:[Lorg/luaj/vm2/LuaValue;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/luaj/vm2/UpValue;->array:[Lorg/luaj/vm2/LuaValue;

    iget v2, p0, Lorg/luaj/vm2/UpValue;->index:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final tojstring()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/UpValue;->array:[Lorg/luaj/vm2/LuaValue;

    iget v1, p0, Lorg/luaj/vm2/UpValue;->index:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
