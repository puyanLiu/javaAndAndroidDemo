.class public Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;
.super Ljava/lang/Object;
.source "H5PopMenu.java"


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Landroid/graphics/drawable/Drawable;

.field protected c:Z

.field protected d:Z

.field protected e:Ljava/lang/String;

.field protected f:Z

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 313
    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 314
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Z)V
    .locals 6

    .prologue
    .line 309
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    .line 310
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->name:Ljava/lang/String;

    .line 301
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->a:Ljava/lang/String;

    .line 302
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->b:Landroid/graphics/drawable/Drawable;

    .line 303
    iput-boolean p4, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->c:Z

    .line 304
    iput-boolean p5, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->d:Z

    .line 305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/view/H5PopMenu$MenuItem;->f:Z

    .line 306
    return-void
.end method
