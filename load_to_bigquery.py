
from google.cloud import bigquery

def load_csv_to_bigquery(dataset_id, table_id, gcs_uri):
    client = bigquery.Client()
    dataset_ref = client.dataset(dataset_id)
    job_config = bigquery.LoadJobConfig(
        source_format=bigquery.SourceFormat.CSV,
        skip_leading_rows=1,
        autodetect=True
    )
    load_job = client.load_table_from_uri(gcs_uri, dataset_ref.table(table_id), job_config=job_config)
    load_job.result()
    print(f"Loaded data into {dataset_id}.{table_id} from {gcs_uri}")

# Example usage:
# load_csv_to_bigquery('salaries_data', 'chicago_salaries', 'gs://chicago_salaries/chicago_salaries.csv')
