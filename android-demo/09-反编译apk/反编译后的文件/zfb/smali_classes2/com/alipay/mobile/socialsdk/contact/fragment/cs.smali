.class final Lcom/alipay/mobile/socialsdk/contact/fragment/cs;
.super Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
.source "RecentListSelectFriendFragment_.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cs;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .prologue
    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cs;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;->access$201(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment_;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
