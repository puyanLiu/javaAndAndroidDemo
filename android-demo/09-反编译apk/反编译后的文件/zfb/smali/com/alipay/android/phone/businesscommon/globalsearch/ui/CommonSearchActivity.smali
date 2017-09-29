.class public Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "CommonSearchActivity.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "common_search_activity"
.end annotation


# static fields
.field public static a:I


# instance fields
.field protected b:Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "search_bar"
    .end annotation
.end field

.field c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

.field protected d:Lcom/alipay/mobile/commonui/widget/APEditText;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "mock_input"
    .end annotation
.end field

.field protected e:Lcom/alipay/mobile/commonui/widget/APButton;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "add_mock"
    .end annotation
.end field

.field public f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

.field private i:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private j:Lcom/alipay/mobile/commonui/widget/APImageButton;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private final n:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;

.field private o:Lcom/alipay/android/phone/a/b/a;

.field private p:Ljava/lang/String;

.field private final q:Landroid/widget/TextView$OnEditorActionListener;

.field private final r:Landroid/view/View$OnClickListener;

.field private final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, -0x1

    sput v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a:I

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    .line 63
    const-string/jumbo v0, "CommonSearchActivity"

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->g:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->n:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;

    .line 96
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/b;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->q:Landroid/widget/TextView$OnEditorActionListener;

    .line 110
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/c;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->r:Landroid/view/View$OnClickListener;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->s:Ljava/util/List;

    .line 382
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->f:Ljava/lang/String;

    .line 61
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/a/b/a;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->o:Lcom/alipay/android/phone/a/b/a;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-object v1

    .line 211
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 212
    :goto_1
    if-eqz v0, :cond_0

    .line 215
    invoke-static {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 223
    :goto_2
    if-eqz v0, :cond_0

    .line 229
    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_3

    .line 231
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 232
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_3
    move-object v1, v0

    .line 247
    goto :goto_0

    .line 211
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/BundleContext;->loadBundle(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    const-string/jumbo v3, "CommonSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Class not found : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v3, "CommonSearchActivity"

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    .line 234
    :catch_1
    move-exception v0

    .line 235
    const-string/jumbo v3, "CommonSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "class cannot be initialed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string/jumbo v2, "CommonSearchActivity"

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3

    .line 237
    :catch_2
    move-exception v0

    .line 238
    const-string/jumbo v3, "CommonSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "class IllegalAccessException: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string/jumbo v2, "CommonSearchActivity"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_3

    .line 240
    :catch_3
    move-exception v0

    .line 241
    const-string/jumbo v3, "CommonSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "class has none constructors: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v2, "CommonSearchActivity"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_3

    .line 243
    :catch_4
    move-exception v0

    .line 244
    const-string/jumbo v3, "CommonSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "The constructor with none parameters dones not exist: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v2, "CommonSearchActivity"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;Z)V
    .locals 10

    .prologue
    const-wide/16 v7, 0x0

    .line 309
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->d()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->i:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "jiushi"

    const-string/jumbo v1, "startSearch failed,same word"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->a()Lcom/alipay/android/phone/a/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/a/a/m;->b()V

    const-string/jumbo v1, "jiushi"

    const-string/jumbo v2, "startSearch , clearSearchParams"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    sput-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->p:Ljava/lang/String;

    const-string/jumbo v3, "MainPage"

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->search(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    const-string/jumbo v1, "default"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->getDelNum(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "key_for_save_time"

    if-lez v0, :cond_1

    const-string/jumbo v2, "search"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-wide v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->m:J

    cmp-long v3, v3, v7

    if-gtz v3, :cond_3

    const-wide/16 v3, -0x1

    invoke-interface {v2, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->m:J

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->m:J

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    iget-wide v5, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->m:J

    sub-long v5, v3, v5

    const-wide/32 v7, 0x240c8400

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    :cond_4
    new-instance v5, Lcom/alipay/android/phone/a/d/b;

    const-string/jumbo v6, "UC-SS-150928-01"

    const-string/jumbo v7, "event"

    const-string/jumbo v8, "20001003"

    const-string/jumbo v9, "search"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/alipay/android/phone/a/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/alipay/android/phone/a/d/b;->i:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/android/phone/a/d/a;->a(Lcom/alipay/android/phone/a/d/b;)V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-wide v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->m:J

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/phone/businesscommon/globalsearch/GlobalSearchServiceImp;->keyWord:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 192
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getSearchStagesFromRemote()V

    .line 193
    return-void
.end method

.method public final a(Lcom/alipay/android/phone/a/b/a;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->o:Lcom/alipay/android/phone/a/b/a;

    .line 307
    return-void
.end method

.method protected b()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    .prologue
    .line 197
    const-string/jumbo v0, "publicplatform"

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/k;->j:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string/jumbo v0, "app"

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/k;->a:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "contact"

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/k;->d:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v0, "coupon"

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/k;->e:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v0, "message_box"

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/k;->h:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v0, "chatmsg"

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/k;->b:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string/jumbo v0, "group"

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/k;->f:I

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    return-void
.end method

.method protected final c()V
    .locals 3
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 273
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->b:Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->getSearchInputEdit()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->i:Lcom/alipay/mobile/commonui/widget/APEditText;

    .line 274
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->i:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFocusable(Z)V

    .line 275
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->i:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setFocusableInTouchMode(Z)V

    .line 276
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->i:Lcom/alipay/mobile/commonui/widget/APEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setImeOptions(I)V

    .line 277
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->i:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->q:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 278
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->i:Lcom/alipay/mobile/commonui/widget/APEditText;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->n:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/f;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->b:Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APSocialSearchBar;->getBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->j:Lcom/alipay/mobile/commonui/widget/APImageButton;

    .line 281
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->j:Lcom/alipay/mobile/commonui/widget/APImageButton;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/e;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    new-instance v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;

    invoke-direct {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    .line 293
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/i;->h:I

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 294
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 358
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 359
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->i:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 360
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a()V

    .line 125
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->a:I

    .line 126
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 128
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 129
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->l:Ljava/lang/String;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->setUserId(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->downLoadApp()V

    .line 135
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/m;->c(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/LBSInfoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/LBSInfoService;

    .line 138
    if-eqz v0, :cond_1

    .line 139
    new-instance v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/d;-><init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/LBSInfoService;->requestLBSInfoUpdates(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V

    .line 155
    :cond_1
    :try_start_0
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/k;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/SearchItemModel;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 161
    const-string/jumbo v1, "actionSrc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/alipay/android/phone/a/a/m;->a()Lcom/alipay/android/phone/a/a/m;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/a/a/m;->a(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->b()V

    .line 164
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/globalsearch/a/a;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    return-void

    .line 157
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 164
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a(Ljava/lang/String;)Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->l:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;->init(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->s:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "CommonSearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Bundle init OK with appId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v3, "CommonSearchActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "AbstractMethodError :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "CommonSearchActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "searchInitialization is null with appId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->setMoreClickListener(Lcom/alipay/android/phone/globalsearch/api/MoreItemClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->h:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;->b()V

    iput-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/i;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 365
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    .line 366
    return-void

    .line 364
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;

    invoke-interface {v0}, Lcom/alipay/android/phone/globalsearch/api/SearchInitialization;->quit()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 264
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onResume()V

    .line 265
    sget v0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a:I

    if-eq v0, v6, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/a/d/b;

    const-string/jumbo v2, "UC-SS-150324-03"

    const-string/jumbo v3, "event"

    const-string/jumbo v4, "20001003"

    const-string/jumbo v5, "search"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/android/phone/a/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "clickback"

    iput-object v2, v1, Lcom/alipay/android/phone/a/d/b;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clickid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/a/d/b;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/phone/a/d/a;->a(Lcom/alipay/android/phone/a/d/b;)V

    .line 267
    sput v6, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/CommonSearchActivity;->a:I

    .line 269
    :cond_0
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
