
from google.cloud import bigquery

def export_table_to_gcs(dataset_id, table_id, destination_uri):
    client = bigquery.Client()
    table_ref = client.dataset(dataset_id).table(table_id)
    extract_job = client.extract_table(
        table_ref,
        destination_uri,
        location="US"
    )
    extract_job.result()
    print(f"Exported {dataset_id}.{table_id} to {destination_uri}")

# Example usage:
# export_table_to_gcs('salaries_data', 'daily_summary', 'gs://chicago_salaries_exports/daily_summary.csv')
