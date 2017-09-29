.class final Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$10;
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
    .locals 0

    check-cast p1, Lorg/luaj/vm2/LuaValue;

    return-object p1
.end method
