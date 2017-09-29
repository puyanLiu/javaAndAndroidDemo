.class public Lcom/alipay/android/phone/publicplatform/common/api/impl/TimeHelperUtil;
.super Ljava/lang/Object;
.source "TimeHelperUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertE(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    packed-switch p0, :pswitch_data_0

    .line 155
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 141
    :pswitch_0
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_78:I

    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :pswitch_1
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_80:I

    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    :pswitch_2
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_82:I

    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :pswitch_3
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_84:I

    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_4
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_86:I

    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_5
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_88:I

    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 153
    :pswitch_6
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_90:I

    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static convertHourString(ZI)Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    if-eqz p0, :cond_0

    .line 174
    const-string/jumbo v1, "HH:mm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 176
    :cond_0
    const/4 v1, 0x6

    if-ge p1, v1, :cond_1

    .line 177
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_102:I

    invoke-static {v1}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 178
    :cond_1
    const/16 v1, 0xc

    if-ge p1, v1, :cond_2

    .line 179
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_105:I

    invoke-static {v1}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 180
    :cond_2
    const/16 v1, 0x13

    if-ge p1, v1, :cond_3

    .line 181
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_107:I

    invoke-static {v1}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    :cond_3
    sget v1, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_109:I

    invoke-static {v1}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static convertTimeStringForChat(JJ)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x6

    const/4 v1, 0x1

    .line 79
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    .line 80
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 82
    invoke-virtual {v4, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 83
    invoke-virtual {v5, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 84
    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    .line 85
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 86
    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 85
    if-ne v2, v3, :cond_1

    move v3, v1

    .line 87
    :goto_0
    if-eqz v3, :cond_2

    invoke-static {v4, v5}, Lcom/alipay/android/phone/publicplatform/common/api/impl/TimeHelperUtil;->isSameWeek(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    .line 88
    :goto_1
    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 90
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 89
    if-ne v7, v8, :cond_0

    move v0, v1

    .line 91
    :cond_0
    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 92
    invoke-static {v6, v7}, Lcom/alipay/android/phone/publicplatform/common/api/impl/TimeHelperUtil;->convertHourString(ZI)Ljava/lang/String;

    move-result-object v6

    .line 93
    if-eqz v0, :cond_3

    .line 94
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_2
    return-object v0

    :cond_1
    move v3, v0

    .line 85
    goto :goto_0

    :cond_2
    move v2, v0

    .line 87
    goto :goto_1

    .line 98
    :cond_3
    cmp-long v0, p2, p0

    if-lez v0, :cond_5

    .line 99
    if-eqz v3, :cond_4

    .line 100
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_38:I

    invoke-static {v2}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 103
    :cond_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_42:I

    invoke-static {v2}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 107
    :cond_5
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 108
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 109
    sub-int v0, v7, v0

    .line 110
    if-nez v3, :cond_7

    .line 111
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v0, v4

    if-le v0, v1, :cond_6

    .line 112
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_42:I

    invoke-static {v2}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 116
    :cond_6
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 117
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 115
    sub-int/2addr v0, v4

    .line 118
    add-int/2addr v0, v7

    .line 121
    :cond_7
    if-ne v0, v1, :cond_8

    .line 122
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_61:I

    invoke-static {v2}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 124
    :cond_8
    if-eqz v2, :cond_9

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Lcom/alipay/android/phone/publicplatform/common/api/impl/TimeHelperUtil;->convertE(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 128
    :cond_9
    if-eqz v3, :cond_a

    .line 129
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_38:I

    invoke-static {v2}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 132
    :cond_a
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    sget v2, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_42:I

    invoke-static {v2}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public static convertTimeStringList(ZJJ)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x6

    const/4 v1, 0x1

    .line 31
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    .line 32
    const-string/jumbo v0, ""

    .line 72
    :goto_0
    return-object v0

    .line 34
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 36
    invoke-virtual {v4, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 37
    invoke-virtual {v5, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 38
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_2

    move v3, v1

    .line 39
    :goto_1
    if-eqz v3, :cond_3

    invoke-static {v4, v5}, Lcom/alipay/android/phone/publicplatform/common/api/impl/TimeHelperUtil;->isSameWeek(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    .line 40
    :goto_2
    if-eqz v3, :cond_1

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    move v0, v1

    .line 41
    :cond_1
    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 42
    invoke-static {p0, v6}, Lcom/alipay/android/phone/publicplatform/common/api/impl/TimeHelperUtil;->convertHourString(ZI)Ljava/lang/String;

    move-result-object v6

    .line 43
    if-eqz v0, :cond_4

    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v3, v0

    .line 38
    goto :goto_1

    :cond_3
    move v2, v0

    .line 39
    goto :goto_2

    .line 47
    :cond_4
    cmp-long v0, p3, p1

    if-lez v0, :cond_6

    .line 48
    if-eqz v3, :cond_5

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_38:I

    invoke-static {v1}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 51
    :cond_5
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_42:I

    invoke-static {v1}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_6
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 55
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 56
    sub-int v0, v6, v0

    .line 57
    if-nez v3, :cond_8

    .line 58
    invoke-virtual {v4, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v0, v4

    if-le v0, v1, :cond_7

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_42:I

    invoke-static {v1}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 61
    :cond_7
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v0, v4

    .line 62
    add-int/2addr v0, v6

    .line 65
    :cond_8
    if-ne v0, v1, :cond_9

    .line 66
    sget v0, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_61:I

    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 67
    :cond_9
    if-eqz v2, :cond_a

    .line 68
    const/4 v0, 0x7

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/phone/publicplatform/common/api/impl/TimeHelperUtil;->convertE(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 69
    :cond_a
    if-eqz v3, :cond_b

    .line 70
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_65:I

    invoke-static {v1}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 72
    :cond_b
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget v1, Lcom/alipay/mobile/publicsvc/common/R$string;->TimeHelperUtil_68:I

    invoke-static {v1}, Lcom/alipay/android/phone/publicplatform/common/api/ContextUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static isSameWeek(Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 160
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 161
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 162
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 163
    add-int/lit8 v0, v0, -0x1

    .line 165
    :cond_0
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 166
    add-int/lit8 v2, v2, -0x1

    .line 168
    :cond_1
    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toDBC(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 194
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 201
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 195
    :cond_0
    aget-char v2, v1, v0

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_2

    .line 196
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 194
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_2
    aget-char v2, v1, v0

    const v3, 0xff00

    if-le v2, v3, :cond_1

    aget-char v2, v1, v0

    const v3, 0xff5f

    if-ge v2, v3, :cond_1

    .line 199
    aget-char v2, v1, v0

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    goto :goto_1
.end method
