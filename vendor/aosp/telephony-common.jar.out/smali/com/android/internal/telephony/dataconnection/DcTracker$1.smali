.class Lcom/android/internal/telephony/dataconnection/DcTracker$1;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/telephony/dataconnection/ApnContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 204
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnContext;)I
    .locals 2
    .param p1, "c1"    # Lcom/android/internal/telephony/dataconnection/ApnContext;
    .param p2, "c2"    # Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 206
    iget v0, p2, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    iget v1, p1, Lcom/android/internal/telephony/dataconnection/ApnContext;->priority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 204
    check-cast p1, Lcom/android/internal/telephony/dataconnection/ApnContext;

    check-cast p2, Lcom/android/internal/telephony/dataconnection/ApnContext;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker$1;->compare(Lcom/android/internal/telephony/dataconnection/ApnContext;Lcom/android/internal/telephony/dataconnection/ApnContext;)I

    move-result p1

    return p1
.end method
