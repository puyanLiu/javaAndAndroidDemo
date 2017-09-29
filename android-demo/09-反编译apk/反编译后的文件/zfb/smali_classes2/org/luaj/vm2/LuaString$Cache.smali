.class Lorg/luaj/vm2/LuaString$Cache;
.super Ljava/lang/Object;


# static fields
.field static final instance:Lorg/luaj/vm2/LuaString$Cache;


# instance fields
.field public final recent_short_strings:[Lorg/luaj/vm2/LuaString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/luaj/vm2/LuaString$Cache;

    invoke-direct {v0}, Lorg/luaj/vm2/LuaString$Cache;-><init>()V

    sput-object v0, Lorg/luaj/vm2/LuaString$Cache;->instance:Lorg/luaj/vm2/LuaString$Cache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [Lorg/luaj/vm2/LuaString;

    iput-object v0, p0, Lorg/luaj/vm2/LuaString$Cache;->recent_short_strings:[Lorg/luaj/vm2/LuaString;

    return-void
.end method


# virtual methods
.method public get(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/LuaString;
    .locals 3

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaString;->hashCode()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    iget-object v0, p0, Lorg/luaj/vm2/LuaString$Cache;->recent_short_strings:[Lorg/luaj/vm2/LuaString;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/LuaString;->raweq(Lorg/luaj/vm2/LuaString;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/LuaString$Cache;->recent_short_strings:[Lorg/luaj/vm2/LuaString;

    aput-object p1, v0, v1

    goto :goto_0
.end method
