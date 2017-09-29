.class Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;
.super Ljava/lang/Object;
.source "IndexResult.java"


# instance fields
.field public fieldId:I

.field public id:I

.field public pkey:Ljava/lang/String;

.field public pkeyHash:I

.field final synthetic this$0:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

.field public weight:I


# direct methods
.method private constructor <init>(Lcom/alipay/android/phone/globalsearch/api/IndexResult;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;->this$0:Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/phone/globalsearch/api/IndexResult;Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;)V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/globalsearch/api/IndexResult$SortModel;-><init>(Lcom/alipay/android/phone/globalsearch/api/IndexResult;)V

    return-void
.end method
