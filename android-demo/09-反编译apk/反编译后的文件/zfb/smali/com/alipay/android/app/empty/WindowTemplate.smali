.class public Lcom/alipay/android/app/empty/WindowTemplate;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/empty/IMemorySizeable;


# instance fields
.field a:I

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/alipay/android/app/empty/WindowTemplate;->a:I

    .line 21
    iput-object p2, p0, Lcom/alipay/android/app/empty/WindowTemplate;->b:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/android/app/empty/WindowTemplate;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method
