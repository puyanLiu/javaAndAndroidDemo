.class public Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;
.super Ljava/lang/Object;
.source "DataContext.java"


# instance fields
.field category:I

.field extData:[B

.field index:I

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    .line 16
    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->category:I

    .line 17
    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->type:I

    .line 18
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I

    .line 22
    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    .line 23
    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->index:I

    .line 27
    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->extData:[B

    .line 28
    iput p3, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->category:I

    .line 29
    iput p4, p0, Lcom/alipay/android/phone/mobilesdk/storage/encryption/DataContext;->type:I

    .line 30
    return-void
.end method
