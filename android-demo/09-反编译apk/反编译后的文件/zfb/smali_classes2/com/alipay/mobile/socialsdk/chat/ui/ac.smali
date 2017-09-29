.class final Lcom/alipay/mobile/socialsdk/chat/ui/ac;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "ShareEntryActivity_.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

.field final synthetic b:Lcom/alipay/mobile/personalbase/model/ShareModel;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ac;->d:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ac;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iput-object p5, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ac;->b:Lcom/alipay/mobile/personalbase/model/ShareModel;

    iput-object p6, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ac;->c:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 4

    .prologue
    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ac;->d:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ac;->a:Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ac;->b:Lcom/alipay/mobile/personalbase/model/ShareModel;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/ui/ac;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/personalbase/model/ShareModel;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
