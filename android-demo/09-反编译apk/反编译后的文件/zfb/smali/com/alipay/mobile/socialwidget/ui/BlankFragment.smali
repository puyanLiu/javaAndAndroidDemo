.class public Lcom/alipay/mobile/socialwidget/ui/BlankFragment;
.super Landroid/support/v4/app/Fragment;
.source "BlankFragment.java"


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EFragment;
    resName = "fragment_empt_view"
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method getReadContactsPermission()V
    .locals 1
    .annotation build Lcom/alipay/android/phone/androidannotations/annotations/AlipayNeedPermissions;
        permission = "android.permission.READ_CONTACTS"
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/alipay/mobile/socialwidget/ui/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialwidget/ui/a;-><init>(Lcom/alipay/mobile/socialwidget/ui/BlankFragment;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 20
    iget-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/BlankFragment;->a:Z

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialwidget/ui/BlankFragment;->a:Z

    .line 22
    invoke-virtual {p0}, Lcom/alipay/mobile/socialwidget/ui/BlankFragment;->getReadContactsPermission()V

    .line 24
    :cond_0
    return-void
.end method
