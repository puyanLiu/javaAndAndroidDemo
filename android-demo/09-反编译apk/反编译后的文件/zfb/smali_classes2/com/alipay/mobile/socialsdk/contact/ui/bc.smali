.class final Lcom/alipay/mobile/socialsdk/contact/ui/bc;
.super Ljava/lang/Object;
.source "RealNameSettingActivity.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/notification/DataContentObserver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bc;->a:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bc;->a:Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/RealNameSettingActivity;->loadFriendInfo()V

    .line 52
    return-void
.end method
