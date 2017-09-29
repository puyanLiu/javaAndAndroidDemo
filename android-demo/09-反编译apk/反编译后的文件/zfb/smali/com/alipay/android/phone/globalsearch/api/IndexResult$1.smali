.class Lcom/alipay/android/phone/globalsearch/api/IndexResult$1;
.super Ljava/lang/Object;
.source "IndexResult.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/globalsearch/api/IndexResult;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/globalsearch/api/IndexResult;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult$1;->this$0:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 48
    iget v2, p1, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->id:I

    iget v3, p2, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->id:I

    if-ge v2, v3, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    iget v2, p1, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->id:I

    iget v3, p2, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->id:I

    if-ne v2, v3, :cond_2

    .line 52
    iget v2, p1, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->pkeyHash:I

    iget v3, p2, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->pkeyHash:I

    if-lt v2, v3, :cond_0

    move v0, v1

    .line 55
    goto :goto_0

    :cond_2
    move v0, v1

    .line 58
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;

    check-cast p2, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/globalsearch/api/IndexResult$1;->compare(Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;)I

    move-result v0

    return v0
.end method
