.class final Lorg/luaj/vm2/lib/jse/CoerceJavaToLua$9;
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

    new-instance v0, Lorg/luaj/vm2/lib/jse/JavaArray;

    invoke-direct {v0, p1}, Lorg/luaj/vm2/lib/jse/JavaArray;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
