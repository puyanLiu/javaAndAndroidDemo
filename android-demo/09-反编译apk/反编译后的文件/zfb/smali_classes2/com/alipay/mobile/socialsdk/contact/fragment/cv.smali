.class final Lcom/alipay/mobile/socialsdk/contact/fragment/cv;
.super Ljava/lang/Object;
.source "SingleFriendSelectFragment.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/notification/DataContentObserver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cv;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;ZLjava/lang/Object;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cv;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->sendLoadMessage(I)V

    .line 78
    return-void
.end method
