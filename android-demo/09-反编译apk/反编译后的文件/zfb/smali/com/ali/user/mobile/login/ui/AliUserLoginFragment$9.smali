.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$9;
.super Ljava/lang/Object;
.source "AliUserLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$9;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$9;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryAdapter:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$9;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v1, v1, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistorys:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->afterDeleteHistory(Ljava/util/List;)V

    .line 563
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$9;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    iget-object v0, v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->mLoginHistoryAdapter:Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/adapter/LoginHistoryAdapter;->notifyDataSetChanged()V

    .line 564
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$9;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->updateLoginHistory()V

    .line 565
    return-void
.end method
