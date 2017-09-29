.class public Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib$UpdateLibV;
    }
.end annotation


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "update"

.field public static final UPDATE_NAMES:[Ljava/lang/String;

.field private static final UPDATE_PROMPT:I


# instance fields
.field private updateScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IUpdateScriptable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "prompt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;->UPDATE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IUpdateScriptable;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;->setUpdateScriptable(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IUpdateScriptable;)V

    .line 25
    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 5

    .prologue
    .line 29
    new-instance v1, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v1}, Lorg/luaj/vm2/LuaTable;-><init>()V

    .line 30
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;->UPDATE_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 31
    sget-object v2, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;->UPDATE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib$UpdateLibV;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;->UPDATE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v0, v4, p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib$UpdateLibV;-><init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;)V

    invoke-virtual {v1, v2, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    const-string/jumbo v0, "update"

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    .line 34
    return-object v1
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public getUpdateScriptable()Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IUpdateScriptable;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;->updateScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IUpdateScriptable;

    return-object v0
.end method

.method public setUpdateScriptable(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IUpdateScriptable;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;->updateScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IUpdateScriptable;

    .line 63
    return-void
.end method

.method public update_promot(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v1

    if-ge v1, v2, :cond_0

    .line 39
    invoke-static {v0}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v0

    .line 54
    :goto_0
    return-object v0

    .line 44
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v2

    .line 46
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v3

    .line 47
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v4

    .line 48
    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/UpdateLib;->updateScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IUpdateScriptable;

    invoke-interface {v5, v1, v2, v3, v4}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IUpdateScriptable;->prompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 54
    :goto_1
    invoke-static {v0}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    move-result-object v0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/lua/LuaErrorHandler;->handle(Ljava/lang/Exception;)V

    goto :goto_1
.end method
