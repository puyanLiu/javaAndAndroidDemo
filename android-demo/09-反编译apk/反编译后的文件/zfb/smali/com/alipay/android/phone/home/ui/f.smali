.class final Lcom/alipay/android/phone/home/ui/f;
.super Ljava/lang/Object;
.source "AbstractHomeFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/f;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/f;->b:Ljava/util/List;

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/f;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/f;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/f;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/f;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/f;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->whenRefreshApplistData()V

    .line 208
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/f;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/f;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    iget-object v1, v1, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Ljava/util/List;)V

    .line 209
    return-void
.end method
