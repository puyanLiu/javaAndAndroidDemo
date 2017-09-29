.class final Lcom/alipay/mobile/socialsdk/contact/ui/m;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "ChatRoomSelectPeopleActivity_.java"


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/m;->c:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;

    iput-object p4, p0, Lcom/alipay/mobile/socialsdk/contact/ui/m;->a:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/alipay/mobile/socialsdk/contact/ui/m;->b:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .prologue
    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/m;->c:Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/m;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/m;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;->a(Lcom/alipay/mobile/socialsdk/contact/ui/ChatRoomSelectPeopleActivity_;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
