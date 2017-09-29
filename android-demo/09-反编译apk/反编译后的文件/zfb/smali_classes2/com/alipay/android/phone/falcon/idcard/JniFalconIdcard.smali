.class public Lcom/alipay/android/phone/falcon/idcard/JniFalconIdcard;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "FalconOCR"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetAddress()Ljava/lang/String;
    .locals 2

    const/16 v1, 0x100

    new-array v0, v1, [B

    invoke-static {v0, v1}, Lcom/alipay/android/phone/falcon/idcard/JniFalconIdcard;->GetAddress([BI)V

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/common/StringManager;->convertGbkToUnicode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native GetAddress([BI)V
.end method

.method public static GetBirthday()Ljava/lang/String;
    .locals 2

    const/16 v1, 0x100

    new-array v0, v1, [B

    invoke-static {v0, v1}, Lcom/alipay/android/phone/falcon/idcard/JniFalconIdcard;->GetBirthday([BI)V

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/common/StringManager;->convertGbkToUnicode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native GetBirthday([BI)V
.end method

.method public static native GetBlurType()I
.end method

.method public static GetCardNumber()Ljava/lang/String;
    .locals 2

    const/16 v1, 0x100

    new-array v0, v1, [B

    invoke-static {v0, v1}, Lcom/alipay/android/phone/falcon/idcard/JniFalconIdcard;->GetCardNumber([BI)V

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/common/StringManager;->convertGbkToUnicode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native GetCardNumber([BI)V
.end method

.method public static native GetCroppedImgBitmap(Landroid/graphics/Bitmap;)V
.end method

.method public static native GetCroppedImgSize([I)V
.end method

.method public static native GetExpType()I
.end method

.method public static GetGender()Ljava/lang/String;
    .locals 2

    const/16 v1, 0x100

    new-array v0, v1, [B

    invoke-static {v0, v1}, Lcom/alipay/android/phone/falcon/idcard/JniFalconIdcard;->GetGender([BI)V

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/common/StringManager;->convertGbkToUnicode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native GetGender([BI)V
.end method

.method public static GetIssueAuthority()Ljava/lang/String;
    .locals 2

    const/16 v1, 0x100

    new-array v0, v1, [B

    invoke-static {v0, v1}, Lcom/alipay/android/phone/falcon/idcard/JniFalconIdcard;->GetIssueAuthority([BI)V

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/common/StringManager;->convertGbkToUnicode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native GetIssueAuthority([BI)V
.end method

.method public static GetName()Ljava/lang/String;
    .locals 2

    const/16 v1, 0x100

    new-array v0, v1, [B

    invoke-static {v0, v1}, Lcom/alipay/android/phone/falcon/idcard/JniFalconIdcard;->GetName([BI)V

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/common/StringManager;->convertGbkToUnicode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native GetName([BI)V
.end method

.method public static GetNationality()Ljava/lang/String;
    .locals 2

    const/16 v1, 0x100

    new-array v0, v1, [B

    invoke-static {v0, v1}, Lcom/alipay/android/phone/falcon/idcard/JniFalconIdcard;->GetNationality([BI)V

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/common/StringManager;->convertGbkToUnicode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native GetNationality([BI)V
.end method

.method public static native GetPhotoType()I
.end method

.method public static GetValidPeriod()Ljava/lang/String;
    .locals 2

    const/16 v1, 0x100

    new-array v0, v1, [B

    invoke-static {v0, v1}, Lcom/alipay/android/phone/falcon/idcard/JniFalconIdcard;->GetValidPeriod([BI)V

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/common/StringManager;->convertGbkToUnicode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native GetValidPeriod([BI)V
.end method

.method public static native Initialize([B[B)Z
.end method

.method public static native IsPhotoValidBitmapSave(Landroid/graphics/Bitmap;Z[BZ)Z
.end method

.method public static native IsPhotoValidBitmapSaveNew(Landroid/graphics/Bitmap;Z[BZ)Z
.end method

.method public static native IsVideoValid([BIIFF)I
.end method

.method public static native Recognize()Z
.end method

.method public static native Release()V
.end method

.method public static native SetThreshold(II)Z
.end method
