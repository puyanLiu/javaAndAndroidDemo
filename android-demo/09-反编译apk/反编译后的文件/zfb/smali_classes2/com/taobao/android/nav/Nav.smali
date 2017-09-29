.class public Lcom/taobao/android/nav/Nav;
.super Ljava/lang/Object;
.source "Nav.java"


# static fields
.field private static final a:Ljava/util/List;

.field private static final b:Ljava/util/List;

.field private static final c:Landroid/util/SparseArray;

.field private static final d:Lcom/taobao/android/nav/Nav$NavResolver;

.field private static volatile e:Lcom/taobao/android/nav/Nav$NavResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/android/nav/Nav;->a:Ljava/util/List;

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taobao/android/nav/Nav;->b:Ljava/util/List;

    .line 618
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/taobao/android/nav/Nav;->c:Landroid/util/SparseArray;

    .line 622
    new-instance v0, Lcom/taobao/android/nav/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/android/nav/a;-><init>(B)V

    .line 623
    sput-object v0, Lcom/taobao/android/nav/Nav;->d:Lcom/taobao/android/nav/Nav$NavResolver;

    sput-object v0, Lcom/taobao/android/nav/Nav;->e:Lcom/taobao/android/nav/Nav$NavResolver;

    return-void
.end method
