.class Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;
.super Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
.source "ColorBalanceService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwilightAutoMode"
.end annotation


# static fields
.field private static final mFourHourMillis:J = 0x1499700L

.field private static final mSixHourMillis:J = 0x1499700L

.field private static final mTwuentyHourMillis:J = 0x3dcc500L


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mIsGetLocation:Ljava/lang/Boolean;

.field private mLastActivatedTime:Ljava/util/Calendar;

.field private mLastLocation:Landroid/location/Location;

.field private mLastTwilightState:Lcom/android/server/twilight/TwilightState;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mPreIsNightStatus:Ljava/lang/Boolean;

.field private mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method public constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 1

    .line 1709
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$1;)V

    .line 1705
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mIsGetLocation:Ljava/lang/Boolean;

    .line 1711
    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 1695
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateTwilightState(Ljava/lang/Boolean;)V

    return-void
.end method

.method private calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;
    .locals 41
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "timeMillis"    # J

    move-object/from16 v0, p0

    .line 1724
    move-wide/from16 v2, p2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1725
    .local v4, "noon":Ljava/util/Calendar;
    invoke-virtual {v4, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1726
    const/16 v5, 0xc

    const/16 v6, 0xb

    invoke-virtual {v4, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 1727
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 1728
    const/16 v5, 0xd

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 1729
    const/16 v5, 0xe

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 1730
    const/4 v5, 0x0

    .line 1731
    .local v5, "isDefaultLocation":Z
    const/4 v7, 0x0

    .line 1732
    .local v7, "lon":I
    const/4 v8, 0x0

    .line 1733
    .local v8, "lat":I
    const-wide/16 v9, 0x0

    .line 1734
    .local v9, "dlon":D
    const-wide/16 v11, 0x0

    .line 1735
    .local v11, "dlat":D
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 1736
    .local v13, "isLastLocationUsed":Ljava/lang/Boolean;
    if-eqz p1, :cond_1

    .line 1737
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    .line 1738
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    .line 1739
    double-to-int v15, v9

    mul-int/lit8 v7, v15, 0x64

    .line 1740
    double-to-int v15, v11

    mul-int/lit8 v8, v15, 0x64

    .line 1741
    const/16 v15, 0x283c

    if-ne v7, v15, :cond_0

    const/16 v15, 0xbb8

    if-ne v8, v15, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    move v15, v6

    :goto_0
    move v5, v15

    .line 1742
    const-string v15, "ColorBalanceService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDefaultLocation:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    :cond_1
    const/4 v6, -0x2

    if-eqz p1, :cond_3

    if-eqz v5, :cond_2

    goto :goto_1

    .line 1759
    :cond_2
    move v14, v7

    goto :goto_2

    .line 1745
    :cond_3
    :goto_1
    iget-object v14, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "twils-lon"

    move/from16 v20, v7

    const/4 v7, 0x0

    invoke-static {v14, v15, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 1746
    .end local v7    # "lon":I
    .local v14, "lon":I
    iget-object v15, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v15}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    move/from16 v21, v8

    const-string/jumbo v8, "twils-lat"

    .line 1746
    .end local v8    # "lat":I
    .local v21, "lat":I
    invoke-static {v15, v8, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 1747
    .end local v21    # "lat":I
    .restart local v8    # "lat":I
    if-eqz v14, :cond_4

    if-eqz v8, :cond_4

    .line 1748
    const-string v7, "ColorBalanceService"

    const-string/jumbo v15, "used SAVED"

    invoke-static {v7, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    int-to-double v6, v14

    const-wide v18, 0x408f400000000000L    # 1000.0

    div-double v9, v6, v18

    .line 1750
    int-to-double v6, v8

    div-double v11, v6, v18

    .line 1751
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    .line 1759
    :cond_4
    :goto_2
    const-wide/32 v6, 0x3dcc500

    const-wide/32 v20, 0x1499700

    if-eqz p1, :cond_6

    if-eqz v5, :cond_5

    goto :goto_3

    .line 1775
    :cond_5
    move/from16 v24, v8

    move-object/from16 v22, v13

    move/from16 v23, v14

    goto :goto_5

    .line 1759
    :cond_6
    :goto_3
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_8

    .line 1760
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    .line 1761
    .local v15, "moonMillis":J
    move-object/from16 v22, v13

    move/from16 v23, v14

    sub-long v13, v15, v20

    .line 1762
    .end local v14    # "lon":I
    .local v13, "sunriseTimeMillis":J
    .local v22, "isLastLocationUsed":Ljava/lang/Boolean;
    .local v23, "lon":I
    add-long/2addr v6, v15

    .line 1763
    .local v6, "sunriseTimeMillis2":J
    add-long v0, v15, v20

    .line 1764
    .local v0, "sunsetTimeMillis":J
    cmp-long v17, v2, v13

    if-gez v17, :cond_7

    .line 1765
    move/from16 v24, v8

    new-instance v8, Lcom/android/server/twilight/TwilightState;

    .line 1765
    .end local v8    # "lat":I
    .local v24, "lat":I
    invoke-direct {v8, v13, v14, v0, v1}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .line 1765
    .local v8, "ts":Lcom/android/server/twilight/TwilightState;
    goto :goto_4

    .line 1768
    .end local v24    # "lat":I
    .local v8, "lat":I
    :cond_7
    move/from16 v24, v8

    .line 1768
    .end local v8    # "lat":I
    .restart local v24    # "lat":I
    new-instance v8, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v8, v6, v7, v0, v1}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .line 1770
    .local v8, "ts":Lcom/android/server/twilight/TwilightState;
    :goto_4
    move-wide/from16 v25, v0

    const-string v0, "ColorBalanceService"

    .line 1770
    .end local v0    # "sunsetTimeMillis":J
    .local v25, "sunsetTimeMillis":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v27, v6

    const-string/jumbo v6, "isDefaultLocation:"

    .line 1770
    .end local v6    # "sunriseTimeMillis2":J
    .local v27, "sunriseTimeMillis2":J
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " Time-fixed:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    return-object v8

    .line 1775
    .end local v15    # "moonMillis":J
    .end local v22    # "isLastLocationUsed":Ljava/lang/Boolean;
    .end local v23    # "lon":I
    .end local v24    # "lat":I
    .end local v25    # "sunsetTimeMillis":J
    .end local v27    # "sunriseTimeMillis2":J
    .local v8, "lat":I
    .local v13, "isLastLocationUsed":Ljava/lang/Boolean;
    .restart local v14    # "lon":I
    :cond_8
    move/from16 v24, v8

    move-object/from16 v22, v13

    move/from16 v23, v14

    .line 1775
    .end local v8    # "lat":I
    .end local v13    # "isLastLocationUsed":Ljava/lang/Boolean;
    .end local v14    # "lon":I
    .restart local v22    # "isLastLocationUsed":Ljava/lang/Boolean;
    .restart local v23    # "lon":I
    .restart local v24    # "lat":I
    :goto_5
    const/4 v0, 0x0

    .line 1776
    .local v0, "isTimeZoneError":Z
    const-wide v13, 0x408f400000000000L    # 1000.0

    mul-double v6, v9, v13

    double-to-int v1, v6

    .line 1777
    .end local v23    # "lon":I
    .local v1, "lon":I
    mul-double v14, v11, v13

    double-to-int v6, v14

    .line 1778
    .end local v24    # "lat":I
    .local v6, "lat":I
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v13, "twils-lon"

    const/4 v14, -0x2

    invoke-static {v8, v13, v1, v14}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1779
    iget-object v8, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v13, "twils-lat"

    invoke-static {v8, v13, v6, v14}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1780
    const-string v8, "ColorBalanceService"

    const-string v13, "Save loc!"

    invoke-static {v8, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    new-instance v8, Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/icu/impl/CalendarAstronomer;-><init>(DD)V

    .line 1782
    .local v8, "ca":Landroid/icu/impl/CalendarAstronomer;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 1783
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v14

    .line 1784
    .local v14, "sunriseTimeMillis":J
    move/from16 v29, v0

    move/from16 v30, v1

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v0

    .line 1785
    .end local v1    # "lon":I
    .local v0, "sunsetTimeMillis":J
    .local v29, "isTimeZoneError":Z
    .local v30, "lon":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 1786
    .local v13, "csunrise":Ljava/util/Calendar;
    move/from16 v31, v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1787
    .local v5, "csunset":Ljava/util/Calendar;
    .local v31, "isDefaultLocation":Z
    invoke-virtual {v13, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1788
    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1793
    move/from16 v32, v6

    const/4 v6, 0x5

    .line 1793
    .end local v6    # "lat":I
    .local v32, "lat":I
    invoke-virtual {v13, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-wide/from16 v33, v9

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 1793
    .end local v9    # "dlon":D
    .local v33, "dlon":D
    if-eq v7, v9, :cond_9

    .line 1794
    const/4 v6, 0x1

    .line 1795
    .end local v29    # "isTimeZoneError":Z
    .local v6, "isTimeZoneError":Z
    const-string v7, "ColorBalanceService"

    const-string v9, "Time zone error 0"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    .end local v6    # "isTimeZoneError":Z
    .restart local v29    # "isTimeZoneError":Z
    :goto_6
    move/from16 v29, v6

    goto :goto_7

    .line 1797
    :cond_9
    cmp-long v7, v0, v2

    if-gez v7, :cond_a

    .line 1798
    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 1799
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 1800
    invoke-virtual {v8, v7}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v14

    .line 1801
    cmp-long v6, v14, v2

    if-gez v6, :cond_b

    .line 1802
    const/4 v6, 0x1

    .line 1803
    .end local v29    # "isTimeZoneError":Z
    .restart local v6    # "isTimeZoneError":Z
    const-string v7, "ColorBalanceService"

    const-string v9, "Time zone error 1"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1805
    .end local v6    # "isTimeZoneError":Z
    .restart local v29    # "isTimeZoneError":Z
    :cond_a
    cmp-long v7, v14, v2

    if-lez v7, :cond_b

    .line 1806
    const/4 v7, -0x1

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 1807
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 1808
    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v0

    .line 1809
    cmp-long v6, v0, v2

    if-lez v6, :cond_b

    .line 1810
    const/4 v6, 0x1

    .line 1811
    .end local v29    # "isTimeZoneError":Z
    .restart local v6    # "isTimeZoneError":Z
    const-string v7, "ColorBalanceService"

    const-string v9, "Time zone error 2"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1815
    .end local v6    # "isTimeZoneError":Z
    .restart local v29    # "isTimeZoneError":Z
    :cond_b
    :goto_7
    new-instance v6, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v6, v14, v15, v0, v1}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .line 1816
    .local v6, "ts":Lcom/android/server/twilight/TwilightState;
    const-string v7, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ts:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    if-eqz v29, :cond_d

    .line 1818
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 1819
    .local v9, "moonMillis":J
    sub-long v14, v9, v20

    .line 1820
    move-wide/from16 v35, v0

    const-wide/32 v16, 0x3dcc500

    add-long v0, v9, v16

    .line 1821
    .local v0, "sunriseTimeMillis2":J
    .local v35, "sunsetTimeMillis":J
    move-object/from16 v37, v4

    move-object/from16 v38, v5

    add-long v4, v9, v20

    .line 1822
    .end local v5    # "csunset":Ljava/util/Calendar;
    .end local v35    # "sunsetTimeMillis":J
    .local v4, "sunsetTimeMillis":J
    .local v37, "noon":Ljava/util/Calendar;
    .local v38, "csunset":Ljava/util/Calendar;
    cmp-long v7, v2, v14

    if-gez v7, :cond_c

    .line 1823
    new-instance v7, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v7, v14, v15, v4, v5}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    move-object v6, v7

    goto :goto_8

    .line 1826
    :cond_c
    new-instance v7, Lcom/android/server/twilight/TwilightState;

    invoke-direct {v7, v0, v1, v4, v5}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    move-object v6, v7

    .line 1828
    :goto_8
    const-string v7, "ColorBalanceService"

    move-wide/from16 v39, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 1828
    .end local v0    # "sunriseTimeMillis2":J
    .local v39, "sunriseTimeMillis2":J
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time zone maybe error,Time-fixed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9    # "moonMillis":J
    .end local v39    # "sunriseTimeMillis2":J
    goto :goto_9

    .line 1830
    .end local v37    # "noon":Ljava/util/Calendar;
    .end local v38    # "csunset":Ljava/util/Calendar;
    .local v0, "sunsetTimeMillis":J
    .local v4, "noon":Ljava/util/Calendar;
    .restart local v5    # "csunset":Ljava/util/Calendar;
    :cond_d
    move-wide/from16 v35, v0

    move-object/from16 v37, v4

    move-object/from16 v38, v5

    move-wide/from16 v4, v35

    .line 1830
    .end local v0    # "sunsetTimeMillis":J
    .end local v5    # "csunset":Ljava/util/Calendar;
    .local v4, "sunsetTimeMillis":J
    .restart local v37    # "noon":Ljava/util/Calendar;
    .restart local v38    # "csunset":Ljava/util/Calendar;
    :goto_9
    return-object v6
.end method

.method private updateActivated()V
    .locals 9

    .line 1871
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1300(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1872
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1873
    .local v1, "currentTimeMillis":J
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastLocation:Landroid/location/Location;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v3

    .line 1874
    .local v3, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1876
    .local v4, "isNight":Z
    :goto_0
    const/4 v5, 0x1

    .line 1877
    .local v5, "setActivated":Z
    if-eqz v3, :cond_1

    .line 1878
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateActivated:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " isNight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " setActivated:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    :cond_1
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 1881
    .end local v1    # "currentTimeMillis":J
    .end local v3    # "state":Lcom/android/server/twilight/TwilightState;
    .end local v4    # "isNight":Z
    .end local v5    # "setActivated":Z
    monitor-exit v0

    .line 1882
    return-void

    .line 1881
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateTwilightState(Ljava/lang/Boolean;)V
    .locals 20
    .param p1, "isCallByOnLocationChange"    # Ljava/lang/Boolean;

    move-object/from16 v7, p0

    .line 1885
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1886
    .local v8, "currentTimeMillis":J
    iget-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1887
    iget-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastLocation:Landroid/location/Location;

    .line 1889
    :cond_0
    iget-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastLocation:Landroid/location/Location;

    invoke-direct {v7, v0, v8, v9}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v10

    .line 1890
    .local v10, "state":Lcom/android/server/twilight/TwilightState;
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTwilightState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isNight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " PreIsNight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mPreIsNightStatus:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mPreIsNightStatus:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mPreIsNightStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v10}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1893
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateActivated()V

    .line 1895
    :cond_2
    invoke-virtual {v10}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mPreIsNightStatus:Ljava/lang/Boolean;

    .line 1896
    iput-object v10, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 1897
    if-eqz v10, :cond_7

    .line 1898
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 1899
    .local v11, "now":Ljava/util/Calendar;
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 1900
    .local v12, "nowMillis":J
    invoke-virtual {v10}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    move-result-wide v14

    .line 1901
    .local v14, "sunriseMillis":J
    invoke-virtual {v10}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    move-result-wide v16

    .line 1903
    .local v16, "sunsetMillis":J
    cmp-long v0, v14, v16

    if-gez v0, :cond_4

    .line 1904
    cmp-long v0, v12, v14

    if-gez v0, :cond_3

    .line 1906
    move-wide v0, v14

    .line 1907
    .local v0, "triggerAtMillis":J
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1 trigger time sunrise:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    .end local v0    # "triggerAtMillis":J
    .local v18, "triggerAtMillis":J
    :goto_0
    move-wide/from16 v18, v0

    goto :goto_1

    .line 1910
    .end local v18    # "triggerAtMillis":J
    :cond_3
    move-wide/from16 v0, v16

    .line 1911
    .restart local v0    # "triggerAtMillis":J
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2 trigger time sunset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1914
    .end local v0    # "triggerAtMillis":J
    :cond_4
    cmp-long v0, v12, v16

    if-gez v0, :cond_5

    .line 1916
    move-wide/from16 v0, v16

    .line 1917
    .restart local v0    # "triggerAtMillis":J
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "3 trigger time sunset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1920
    .end local v0    # "triggerAtMillis":J
    :cond_5
    move-wide v0, v14

    .line 1921
    .restart local v0    # "triggerAtMillis":J
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "4 trigger time sunrise:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1925
    .end local v0    # "triggerAtMillis":J
    .restart local v18    # "triggerAtMillis":J
    :goto_1
    iget-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1926
    cmp-long v0, v18, v12

    if-gez v0, :cond_6

    .line 1927
    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "time zone maybe error,triggerAtMillis < nowMillis!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1929
    :cond_6
    iget-object v0, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    const-string v4, "ColorBalanceService"

    iget-object v2, v7, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1700(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/os/Handler;

    move-result-object v6

    move-wide/from16 v2, v18

    move-object v5, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 1931
    .end local v11    # "now":Ljava/util/Calendar;
    .end local v12    # "nowMillis":J
    .end local v14    # "sunriseMillis":J
    .end local v16    # "sunsetMillis":J
    .end local v18    # "triggerAtMillis":J
    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .line 1973
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 1974
    return-void
.end method

.method public onAlarm()V
    .locals 2

    .line 1835
    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateTwilightState(Ljava/lang/Boolean;)V

    .line 1838
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 12
    .param p1, "location"    # Landroid/location/Location;

    .line 1842
    if-eqz p1, :cond_3

    .line 1843
    const/4 v0, 0x0

    .line 1844
    .local v0, "isDefaultLocation":Z
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x64

    .line 1845
    .local v1, "lon":I
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v2, v2, 0x64

    .line 1847
    .local v2, "lat":I
    const/16 v3, 0x283c

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_0

    const/16 v3, 0xbb8

    if-ne v2, v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    move v0, v3

    .line 1848
    if-eqz v0, :cond_1

    .line 1849
    const-string v3, "ColorBalanceService"

    const-string v6, "#1 startListening"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1851
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v7, "network"

    const-wide/32 v8, 0x36ee80

    const v10, 0x47c35000    # 100000.0f

    move-object v11, p0

    invoke-virtual/range {v6 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1852
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mIsGetLocation:Ljava/lang/Boolean;

    goto :goto_1

    .line 1854
    :cond_1
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mIsGetLocation:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1855
    const-string v3, "ColorBalanceService"

    const-string v4, "#2 startListening"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v3, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1857
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v7, "network"

    const-wide/32 v8, 0x36ee80

    const v10, 0x47c35000    # 100000.0f

    move-object v11, p0

    invoke-virtual/range {v6 .. v11}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1858
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mIsGetLocation:Ljava/lang/Boolean;

    .line 1861
    :cond_2
    :goto_1
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onLocationChanged: provider="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " accuracy="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1863
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " time="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1861
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastLocation:Landroid/location/Location;

    .line 1866
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateTwilightState(Ljava/lang/Boolean;)V

    .line 1868
    .end local v0    # "isDefaultLocation":Z
    .end local v1    # "lon":I
    .end local v2    # "lat":I
    :cond_3
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 1722
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 1718
    return-void
.end method

.method public onStart()V
    .locals 7

    .line 1937
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1938
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    .line 1939
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "network"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1940
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1941
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode$1;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1949
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1950
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1951
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1953
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateTwilightState(Ljava/lang/Boolean;)V

    .line 1954
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateActivated()V

    .line 1955
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 1714
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1960
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1961
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1962
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 1963
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1964
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1965
    const-string v0, "ColorBalanceService"

    const-string v1, "TwilightAutoMode stop,disable night display mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1967
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 1969
    :cond_0
    return-void
.end method
