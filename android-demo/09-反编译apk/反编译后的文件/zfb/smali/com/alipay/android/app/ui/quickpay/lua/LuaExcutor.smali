.class public Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# instance fields
.field private a:Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;->a:Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;

    .line 27
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;->a:Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;->a:Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->dispose()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;->a:Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;

    .line 111
    :cond_0
    return-void
.end method

.method public execute()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 90
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;->a:Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;

    if-nez v1, :cond_0

    .line 102
    :goto_0
    return v0

    .line 96
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;->a:Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->getLuaScript()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->call()Lorg/luaj/vm2/LuaValue;
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public execute(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;->execute(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public execute(Ljava/lang/String;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 49
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;->a:Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;->a:Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;

    invoke-virtual {v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->getLuaScript()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->call()Lorg/luaj/vm2/LuaValue;

    .line 61
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/LuaExcutor;->a:Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;

    invoke-virtual {v1, p1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaHolder;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 65
    :cond_2
    invoke-virtual {v2}, Lorg/luaj/vm2/LuaValue;->call()Lorg/luaj/vm2/LuaValue;

    .line 73
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Lorg/luaj/vm2/LuaValue;

    move v1, v0

    .line 68
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 69
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object v4

    aput-object v4, v3, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 71
    :cond_4
    invoke-virtual {v2, v3}, Lorg/luaj/vm2/LuaValue;->invoke([Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 74
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
