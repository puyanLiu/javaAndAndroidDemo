.class final Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$6;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$Coercion;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    check-cast p1, [B

    invoke-static {p1}, Lorg/luaj/vm2/LuaValue;->valueOf([B)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    return-object v0
.end method
