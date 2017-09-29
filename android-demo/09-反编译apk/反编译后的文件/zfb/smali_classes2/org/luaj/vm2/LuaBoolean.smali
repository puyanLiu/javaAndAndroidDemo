.class public final Lorg/luaj/vm2/LuaBoolean;
.super Lorg/luaj/vm2/LuaValue;


# static fields
.field static final _FALSE:Lorg/luaj/vm2/LuaBoolean;

.field static final _TRUE:Lorg/luaj/vm2/LuaBoolean;

.field public static s_metatable:Lorg/luaj/vm2/LuaValue;


# instance fields
.field public final v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/luaj/vm2/LuaBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/luaj/vm2/LuaBoolean;-><init>(Z)V

    sput-object v0, Lorg/luaj/vm2/LuaBoolean;->_TRUE:Lorg/luaj/vm2/LuaBoolean;

    new-instance v0, Lorg/luaj/vm2/LuaBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/luaj/vm2/LuaBoolean;-><init>(Z)V

    sput-object v0, Lorg/luaj/vm2/LuaBoolean;->_FALSE:Lorg/luaj/vm2/LuaBoolean;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lorg/luaj/vm2/LuaValue;-><init>()V

    iput-boolean p1, p0, Lorg/luaj/vm2/LuaBoolean;->v:Z

    return-void
.end method


# virtual methods
.method public final booleanValue()Z
    .locals 1

    iget-boolean v0, p0, Lorg/luaj/vm2/LuaBoolean;->v:Z

    return v0
.end method

.method public final checkboolean()Z
    .locals 1

    iget-boolean v0, p0, Lorg/luaj/vm2/LuaBoolean;->v:Z

    return v0
.end method

.method public final getmetatable()Lorg/luaj/vm2/LuaValue;
    .locals 1

    sget-object v0, Lorg/luaj/vm2/LuaBoolean;->s_metatable:Lorg/luaj/vm2/LuaValue;

    return-object v0
.end method

.method public final isboolean()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final not()Lorg/luaj/vm2/LuaValue;
    .locals 1

    iget-boolean v0, p0, Lorg/luaj/vm2/LuaBoolean;->v:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/LuaBoolean;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method public final optboolean(Z)Z
    .locals 1

    iget-boolean v0, p0, Lorg/luaj/vm2/LuaBoolean;->v:Z

    return v0
.end method

.method public final toboolean()Z
    .locals 1

    iget-boolean v0, p0, Lorg/luaj/vm2/LuaBoolean;->v:Z

    return v0
.end method

.method public final tojstring()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lorg/luaj/vm2/LuaBoolean;->v:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public final type()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final typename()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "boolean"

    return-object v0
.end method
