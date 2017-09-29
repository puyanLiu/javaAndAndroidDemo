.class public Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib$PhoneLibV;
    }
.end annotation


# static fields
.field public static final LIB_NAME:Ljava/lang/String; = "phone"

.field private static final PHONE_CALL:I = 0x1

.field private static final PHONE_MSG:I

.field public static final PHONE_NAMES:[Ljava/lang/String;


# instance fields
.field private phoneScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IPhoneScriptable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "msg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "call"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->PHONE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IPhoneScriptable;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->phoneScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IPhoneScriptable;

    .line 30
    return-void
.end method


# virtual methods
.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 5

    .prologue
    .line 34
    new-instance v1, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v1}, Lorg/luaj/vm2/LuaTable;-><init>()V

    .line 35
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->PHONE_NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 36
    sget-object v2, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->PHONE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    new-instance v3, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib$PhoneLibV;

    sget-object v4, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->PHONE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v3, v0, v4, p0}, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib$PhoneLibV;-><init>(ILjava/lang/String;Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;)V

    invoke-virtual {v1, v2, v3}, Lorg/luaj/vm2/LuaTable;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    .line 39
    return-object v1
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public phone_call(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-gtz v0, :cond_0

    .line 61
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    .line 71
    :goto_0
    return-object v0

    .line 64
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->phoneScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IPhoneScriptable;

    invoke-interface {v1, v0}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IPhoneScriptable;->call(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 71
    :goto_1
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 68
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public phone_msg(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 43
    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 44
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    .line 56
    :goto_0
    return-object v0

    .line 48
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/luaj/vm2/Varargs;->checkjstring(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/lua/extension/PhoneLib;->phoneScriptable:Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IPhoneScriptable;

    invoke-interface {v2, v0, v1}, Lcom/alipay/android/app/ui/quickpay/lua/scriptable/IPhoneScriptable;->msg(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/luaj/vm2/LuaError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :goto_1
    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 53
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
