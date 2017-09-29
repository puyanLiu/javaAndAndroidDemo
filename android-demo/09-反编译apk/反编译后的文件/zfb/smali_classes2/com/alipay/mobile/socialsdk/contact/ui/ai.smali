.class final Lcom/alipay/mobile/socialsdk/contact/ui/ai;
.super Ljava/lang/Object;
.source "PersonalProfileActivity.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/service/PhotoBrowseListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ai;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    .line 933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBottomMenuClick(Landroid/app/Activity;Ljava/util/List;Lcom/alipay/mobile/beehive/service/PhotoMenu;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;",
            "Lcom/alipay/mobile/beehive/service/PhotoMenu;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 942
    const/4 v0, 0x0

    return v0
.end method

.method public final onLongPressMenuClick(Landroid/app/Activity;Lcom/alipay/mobile/beehive/service/PhotoInfo;Lcom/alipay/mobile/beehive/service/PhotoMenu;)Z
    .locals 1

    .prologue
    .line 937
    const/4 v0, 0x0

    return v0
.end method

.method public final onPhotoDelete(Ljava/util/List;Landroid/os/Bundle;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/beehive/service/PhotoInfo;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 947
    const/4 v0, 0x0

    return v0
.end method
