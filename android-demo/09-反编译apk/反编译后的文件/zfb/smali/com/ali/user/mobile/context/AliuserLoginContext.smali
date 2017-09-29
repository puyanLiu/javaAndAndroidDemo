.class public Lcom/ali/user/mobile/context/AliuserLoginContext;
.super Ljava/lang/Object;
.source "AliuserLoginContext.java"


# static fields
.field private static a:Z

.field private static b:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static c:Z

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static g:Lcom/ali/user/mobile/gw/GWUrlSetter;

.field private static h:Lcom/ali/user/mobile/rsa/RSAHandler;

.field private static i:Lcom/ali/user/mobile/login/dex/DexHandler;

.field private static j:Lcom/ali/user/mobile/service/UserLoginService;

.field private static k:Lcom/ali/user/mobile/service/UserFaceLoginService;

.field private static l:Lcom/ali/user/mobile/service/UserRegisterService;

.field private static m:Lcom/ali/user/mobile/service/UrlFetchService;

.field private static n:Lcom/ali/user/mobile/service/AccountBindService;

.field private static o:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/ali/user/mobile/context/LoginHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Lcom/ali/user/mobile/login/OnLoginCaller;

.field private static q:Landroid/os/Bundle;

.field private static r:Z

.field private static s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 39
    sput-boolean v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->a:Z

    .line 69
    sput-boolean v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->c:Z

    .line 242
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->o:Ljava/util/Stack;

    .line 298
    sput-boolean v1, Lcom/ali/user/mobile/context/AliuserLoginContext;->r:Z

    .line 308
    sput-boolean v1, Lcom/ali/user/mobile/context/AliuserLoginContext;->s:Z

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 103
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "aliuser.login.activity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->d:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, "AliuserLoginContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "config login activity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ali/user/mobile/context/AliuserLoginContext;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string/jumbo v0, "com.ali.user.mobile.login.ui.UserLoginActivity"

    sput-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->d:Ljava/lang/String;

    .line 113
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->d:Ljava/lang/String;

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    const-string/jumbo v1, "AliuserLoginContext"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 319
    const-string/jumbo v0, "AliuserLoginContext"

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->r:Z

    .line 321
    sput-object v2, Lcom/ali/user/mobile/context/AliuserLoginContext;->e:Ljava/lang/Class;

    .line 322
    sput-object v2, Lcom/ali/user/mobile/context/AliuserLoginContext;->f:Ljava/lang/Class;

    .line 323
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 324
    return-void
.end method

.method public static getAccountBindService()Lcom/ali/user/mobile/service/AccountBindService;
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->n:Lcom/ali/user/mobile/service/AccountBindService;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/ali/user/mobile/service/impl/AccountBindServiceImpl;

    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/service/impl/AccountBindServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->n:Lcom/ali/user/mobile/service/AccountBindService;

    .line 236
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->n:Lcom/ali/user/mobile/service/AccountBindService;

    return-object v0
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getDexHandler()Lcom/ali/user/mobile/login/dex/DexHandler;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->i:Lcom/ali/user/mobile/login/dex/DexHandler;

    return-object v0
.end method

.method public static getGwUrlSetter()Lcom/ali/user/mobile/gw/GWUrlSetter;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->g:Lcom/ali/user/mobile/gw/GWUrlSetter;

    return-object v0
.end method

.method public static getLoginActivityClazz()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 122
    const-string/jumbo v0, "AliuserLoginContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "config login clazz:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/ali/user/mobile/context/AliuserLoginContext;->e:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->e:Ljava/lang/Class;

    return-object v0
.end method

.method public static getLoginCaller()Lcom/ali/user/mobile/login/OnLoginCaller;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->p:Lcom/ali/user/mobile/login/OnLoginCaller;

    return-object v0
.end method

.method public static getLoginFragmentClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->f:Ljava/lang/Class;

    return-object v0
.end method

.method public static getLoginHandler()Lcom/ali/user/mobile/context/LoginHandler;
    .locals 5

    .prologue
    .line 245
    const-string/jumbo v0, "AliuserLoginContext"

    const-string/jumbo v1, "stack size is %s when get: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/ali/user/mobile/context/AliuserLoginContext;->o:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    .line 249
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/context/LoginHandler;

    .line 250
    const-string/jumbo v1, "AliuserLoginContext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getLoginHandler:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLoginHistoryManager(Landroid/content/Context;)Lcom/ali/user/mobile/login/LoginHistoryManager;
    .locals 1

    .prologue
    .line 285
    invoke-static {p0}, Lcom/ali/user/mobile/db/LoginHistoryDao;->get(Landroid/content/Context;)Lcom/ali/user/mobile/db/LoginHistoryDao;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginActivityClazz()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginActivityClazz()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 87
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-static {p0}, Lcom/ali/user/mobile/context/AliuserLoginContext;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getRsaHandler()Lcom/ali/user/mobile/rsa/RSAHandler;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->h:Lcom/ali/user/mobile/rsa/RSAHandler;

    return-object v0
.end method

.method public static getUrlFetchService()Lcom/ali/user/mobile/service/UrlFetchService;
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->m:Lcom/ali/user/mobile/service/UrlFetchService;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/ali/user/mobile/service/impl/UrlFetchServiceImpl;

    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/service/impl/UrlFetchServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->m:Lcom/ali/user/mobile/service/UrlFetchService;

    .line 227
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->m:Lcom/ali/user/mobile/service/UrlFetchService;

    return-object v0
.end method

.method public static getUserFaceLoginService()Lcom/ali/user/mobile/service/UserFaceLoginService;
    .locals 2

    .prologue
    .line 200
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->k:Lcom/ali/user/mobile/service/UserFaceLoginService;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;

    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/service/impl/UserFaceLoginServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->k:Lcom/ali/user/mobile/service/UserFaceLoginService;

    .line 203
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->k:Lcom/ali/user/mobile/service/UserFaceLoginService;

    return-object v0
.end method

.method public static getUserLoginService()Lcom/ali/user/mobile/service/UserLoginService;
    .locals 2

    .prologue
    .line 188
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->j:Lcom/ali/user/mobile/service/UserLoginService;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;

    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/service/impl/UserLoginServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->j:Lcom/ali/user/mobile/service/UserLoginService;

    .line 191
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->j:Lcom/ali/user/mobile/service/UserLoginService;

    return-object v0
.end method

.method public static getUserRegisterService()Lcom/ali/user/mobile/service/UserRegisterService;
    .locals 2

    .prologue
    .line 212
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->l:Lcom/ali/user/mobile/service/UserRegisterService;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;

    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ali/user/mobile/service/impl/UserRegisterServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->l:Lcom/ali/user/mobile/service/UserRegisterService;

    .line 215
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->l:Lcom/ali/user/mobile/service/UserRegisterService;

    return-object v0
.end method

.method public static getsConfigParam()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->q:Landroid/os/Bundle;

    return-object v0
.end method

.method public static isBizFinish()Z
    .locals 1

    .prologue
    .line 311
    sget-boolean v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->s:Z

    return v0
.end method

.method public static isComeBack()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->a:Z

    return v0
.end method

.method public static isResetCookie()Z
    .locals 1

    .prologue
    .line 72
    sget-boolean v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->c:Z

    return v0
.end method

.method public static isSaveHistory()Z
    .locals 1

    .prologue
    .line 301
    sget-boolean v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->r:Z

    return v0
.end method

.method public static popLoginHandler()Lcom/ali/user/mobile/context/LoginHandler;
    .locals 5

    .prologue
    .line 256
    const-string/jumbo v0, "AliuserLoginContext"

    const-string/jumbo v1, "stack size is %s before pop: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/ali/user/mobile/context/AliuserLoginContext;->o:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 262
    :goto_0
    return-object v0

    .line 260
    :cond_0
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->o:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/context/LoginHandler;

    .line 261
    const-string/jumbo v1, "AliuserLoginContext"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "popLoginHandler:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static pushLoginHandler(Lcom/ali/user/mobile/context/LoginHandler;)V
    .locals 5

    .prologue
    .line 267
    sget-object v0, Lcom/ali/user/mobile/context/AliuserLoginContext;->o:Ljava/util/Stack;

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string/jumbo v0, "AliuserLoginContext"

    const-string/jumbo v1, "stack size is %s after push: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/ali/user/mobile/context/AliuserLoginContext;->o:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public static setBizFinish(Z)V
    .locals 0

    .prologue
    .line 315
    sput-boolean p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->s:Z

    .line 316
    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 63
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->b:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static setComeBack(Z)V
    .locals 3

    .prologue
    .line 46
    const-string/jumbo v0, "AliuserLoginContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "can login come back\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sput-boolean p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->a:Z

    .line 48
    return-void
.end method

.method public static setDexHandler(Lcom/ali/user/mobile/login/dex/DexHandler;)V
    .locals 0

    .prologue
    .line 179
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->i:Lcom/ali/user/mobile/login/dex/DexHandler;

    .line 180
    return-void
.end method

.method public static setGwUrlSetter(Lcom/ali/user/mobile/gw/GWUrlSetter;)V
    .locals 0

    .prologue
    .line 153
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->g:Lcom/ali/user/mobile/gw/GWUrlSetter;

    .line 154
    return-void
.end method

.method public static setLoginActivity(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->d:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public static setLoginActivityClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 127
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->e:Ljava/lang/Class;

    .line 128
    return-void
.end method

.method public static setLoginCaller(Lcom/ali/user/mobile/login/OnLoginCaller;)V
    .locals 0

    .prologue
    .line 281
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->p:Lcom/ali/user/mobile/login/OnLoginCaller;

    .line 282
    return-void
.end method

.method public static setLoginFragmentClazz(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 140
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->f:Ljava/lang/Class;

    .line 141
    return-void
.end method

.method public static setResetCookie(Z)V
    .locals 3

    .prologue
    .line 76
    const-string/jumbo v0, "AliuserLoginContext"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "if need reset cookie\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sput-boolean p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->c:Z

    .line 78
    return-void
.end method

.method public static setRsaHandler(Lcom/ali/user/mobile/rsa/RSAHandler;)V
    .locals 0

    .prologue
    .line 162
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->h:Lcom/ali/user/mobile/rsa/RSAHandler;

    .line 163
    return-void
.end method

.method public static setSaveHistory(Z)V
    .locals 0

    .prologue
    .line 305
    sput-boolean p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->r:Z

    .line 306
    return-void
.end method

.method public static setsConfigParam(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 295
    sput-object p0, Lcom/ali/user/mobile/context/AliuserLoginContext;->q:Landroid/os/Bundle;

    .line 296
    return-void
.end method
