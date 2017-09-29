.class final Lcom/alipay/mobile/socialsdk/contact/fragment/l;
.super Ljava/lang/Object;
.source "ContactListMainPageFragment.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/notification/DataContentObserver;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/l;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;ZLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/l;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->refreshNewFriendEntry(Ljava/lang/Object;)V

    .line 64
    return-void
.end method
