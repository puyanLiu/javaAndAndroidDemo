.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/r;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "MainSearchFragment_.java"


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/r;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;

    iput-object p4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/r;->a:Ljava/util/List;

    iput-object p5, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/r;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    iput-object p6, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/r;->c:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/r;->d:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    .prologue
    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/r;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/r;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/r;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/r;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/r;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->b(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
