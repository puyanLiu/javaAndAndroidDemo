.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;
.super Ljava/lang/Object;
.source "MainSearchFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    iput-object p4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->e:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;

    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/o;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/n;Ljava/util/List;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchModel;Ljava/lang/String;Z)V

    .line 101
    :cond_0
    return-void
.end method
